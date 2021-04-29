AddCSLuaFile( )
CFC_M9k_Stubber = { }
local stubQueue = { }

function CFC_M9k_Stubber.registerStub( stub )
    table.insert( stubQueue, stub )
end

-- Load our stubs
local packs = { "m9k_assault_rifles" }

for _, pack in pairs( packs ) do
    local packPath = "cfc_entity_stubber/m9k/" .. pack .. "/"
    -- List all stubs in the packs folder, sorted by names ascending
    local stubs, _ = file.Find( packPath .. "*.lua", "LUA", "nameasc" )

    for _, stub in next, stubs do
        if stub then
            local stubPath = packPath .. stub
            include( stubPath )
        end
    end
end

local function runStubs( )
    print( "[M9k Stubber] Running stubs!" )

    for _, stub in pairs( stubQueue ) do
        stub( )
    end
end

runStubs( )