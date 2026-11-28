cfcEntityStubber = cfcEntityStubber or {}

function cfcEntityStubber.printMessage( text, color )
    MsgC( Color( 41, 41, 41 ), "[", Color( 150, 150, 150 ), "Stubber", Color( 41, 41, 41 ), "] ", color, text .. "\n" )
end

local function findStubs( directory )
    local paths = {}
    local function addFiles( folder )
        local files = file.Find( folder .. "*.lua", "LUA", "nameasc" )
        for _, fileName in ipairs( files ) do
            local path = folder .. fileName
            if SERVER then AddCSLuaFile( path ) end
            paths[#paths + 1] = path
        end
    end

    addFiles( directory )
    local _, folders = file.Find( directory .. "*", "LUA", "nameasc" )
    for _, folder in ipairs( folders ) do
        addFiles( directory .. folder .. "/" )
    end

    return paths
end

local function runStub( path, definition )
    return xpcall( function()
        local apply = include( path )
        if not isfunction( apply ) then
            error( "Stub must return a function" )
        end

        return apply( definition )
    end, function( err )
        cfcEntityStubber.printMessage( "ERROR: " .. path .. ": " .. debug.traceback( tostring( err ), 2 ), Color( 255, 125, 0 ) )
    end )
end

local function loadStubs( directory, event, identifier )
    local stubs = {}
    for _, path in ipairs( findStubs( directory ) ) do
        local class = string.StripExtension( string.GetFileFromFilename( path ) )
        if stubs[class] then
            cfcEntityStubber.printMessage( "ERROR: Duplicate stub: " .. path .. "; using " .. stubs[class], Color( 255, 125, 0 ) )
        else
            stubs[class] = path
        end
    end

    hook.Add( event, identifier, function( definition, class )
        -- Both registration functions resolve ClassNameOverride after their hook.
        if isstring( definition.ClassNameOverride ) then class = definition.ClassNameOverride end

        local path = stubs[class]
        if not path then return end

        local success, result = runStub( path, definition )
        -- Only an explicit veto may stop registration and other hook listeners.
        if success and result == false then return false end
    end )
end

loadStubs( "cfc_entity_stubber/weapons/", "PreRegisterSWEP", "CFC_EntityStubber_ApplyWeaponStub" )
loadStubs( "cfc_entity_stubber/entities/", "PreRegisterSENT", "CFC_EntityStubber_ApplyEntityStub" )

local postEntityStubs = findStubs( "cfc_entity_stubber/postentityinit/" )
-- Replace the previous InitPostEntity hook when refreshing an existing installation.
hook.Remove( "InitPostEntity", "StubberStart" )
hook.Add( "InitPostEntity", "CFC_EntityStubber_RunPostEntityStubs", function()
    for _, path in ipairs( postEntityStubs ) do
        runStub( path )
    end

    hook.Run( "CFC_EntityStubber_PostRunStubs" )
end )
