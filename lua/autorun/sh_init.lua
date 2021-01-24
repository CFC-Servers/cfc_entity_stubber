AddCSLuaFile()

CFC_Entity_Stubber = {}

local stubQueue = {}

function CFC_Entity_Stubber.registerStub( stub )
    table.insert( stubQueue, stub )
end

-- Load our stubs
local packs = { "cw2_guns", "cw2_attachments" }

for _, pack in pairs( packs ) do
    local packPath = "cfc_entity_stubber/stubs/" .. pack .. "/"

    -- List all stubs in the packs folder, sorted by names ascending
    local stubs, _ = file.Find( packPath .. "*.lua", "LUA", "nameasc" )

    for _, stub in next, stubs do
        if stub then
            local stubPath = packPath .. stub
            print( "[Entity Stubber] Loading " .. stubPath .. "..." )

            include( stubPath )
        end
    end
end

local function runStubs()
    print( "[Entity Stubber] Running stubs!" )
    for _, stub in pairs( stubQueue ) do
        stub()
    end
end

hook.Add( "InitPostEntity", "StubberStart", function()
    runStubs()
end)
