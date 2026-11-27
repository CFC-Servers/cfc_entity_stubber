cfcEntityStubber = cfcEntityStubber or {}

if SERVER then AddCSLuaFile( "cfc_entity_stubber/legacy.lua" ) end
include( "cfc_entity_stubber/legacy.lua" )

local weaponStubs = {}
local weaponsDirectory = "cfc_entity_stubber/weapons/"

local function indexDirectory( directory )
    local files = file.Find( directory .. "*.lua", "LUA", "nameasc" )

    for _, fileName in ipairs( files ) do
        local path = directory .. fileName
        local class = string.StripExtension( fileName )

        if SERVER then AddCSLuaFile( path ) end

        if weaponStubs[class] then
            ErrorNoHalt( "[Stubber] Duplicate weapon stub: " .. path .. "; using " .. weaponStubs[class] .. "\n" )
        else
            weaponStubs[class] = path
        end
    end
end

indexDirectory( weaponsDirectory )

local _, folders = file.Find( weaponsDirectory .. "*", "LUA", "nameasc" )
for _, folder in ipairs( folders ) do
    indexDirectory( weaponsDirectory .. folder .. "/" )
end

hook.Add( "PreRegisterSWEP", "CFC_EntityStubber_ApplyWeaponStub", function( weapon, class )
    -- weapons.Register resolves ClassNameOverride after this hook.
    if isstring( weapon.ClassNameOverride ) then class = weapon.ClassNameOverride end

    local path = weaponStubs[class]
    if not path then return end

    xpcall( function()
        -- Include at registration time so dependencies need not exist during autorun.
        local apply = include( path )
        if not isfunction( apply ) then
            error( "Weapon stub must return a function" )
        end

        apply( weapon )
    end, function( err )
        ErrorNoHalt( "[Stubber] " .. path .. ": " .. debug.traceback( tostring( err ), 2 ) .. "\n" )
    end )
end )
