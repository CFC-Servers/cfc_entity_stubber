cfcEntityStubber = cfcEntityStubber or {}

if SERVER then AddCSLuaFile( "cfc_entity_stubber/legacy.lua" ) end
include( "cfc_entity_stubber/legacy.lua" )

local function indexDirectory( directory, stubs )
    local files = file.Find( directory .. "*.lua", "LUA", "nameasc" )

    for _, fileName in ipairs( files ) do
        local path = directory .. fileName
        local class = string.StripExtension( fileName )

        if SERVER then AddCSLuaFile( path ) end

        if stubs[class] then
            ErrorNoHalt( "[Stubber] Duplicate stub: " .. path .. "; using " .. stubs[class] .. "\n" )
        else
            stubs[class] = path
        end
    end
end

local function loadStubs( directory, event, identifier )
    local stubs = {}
    indexDirectory( directory, stubs )

    local _, folders = file.Find( directory .. "*", "LUA", "nameasc" )
    for _, folder in ipairs( folders ) do
        indexDirectory( directory .. folder .. "/", stubs )
    end

    hook.Add( event, identifier, function( definition, class )
        -- Both registration functions resolve ClassNameOverride after their hook.
        if isstring( definition.ClassNameOverride ) then class = definition.ClassNameOverride end

        local path = stubs[class]
        if not path then return end

        local success, result = xpcall( function()
            local apply = include( path )
            if not isfunction( apply ) then
                error( "Stub must return a function" )
            end

            return apply( definition )
        end, function( err )
            ErrorNoHalt( "[Stubber] " .. path .. ": " .. debug.traceback( tostring( err ), 2 ) .. "\n" )
        end )

        -- Only an explicit veto may stop registration and other hook listeners.
        if success and result == false then return false end
    end )
end

loadStubs( "cfc_entity_stubber/weapons/", "PreRegisterSWEP", "CFC_EntityStubber_ApplyWeaponStub" )
loadStubs( "cfc_entity_stubber/entities/", "PreRegisterSENT", "CFC_EntityStubber_ApplyEntityStub" )
