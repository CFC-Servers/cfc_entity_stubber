AddCSLuaFile()

local registeredStubs = {}
local registeredAttachments = {}

local entLists = { "Weapon", "SpawnableEntities", "Vehicles", "NPC" }
local entTable = {}

function CFC_Entity_Stubber.registerStub( className, stub )
    registeredStubs[className] = stub
end

function CFC_Entity_Stubber.registerAttachmentStub( attachName, stubFunc )
    registeredAttachments[attachName] = stubFunc
end

function CFC_Entity_Stubber.getAttachment( attachName )
    local attachment = CustomizableWeaponry.registeredAttachmentsSKey[ attachName ]
    return attachment
end

-- Stub tables
CFC_Entity_Stubber.packs = { "cw2_guns" }
CFC_Entity_Stubber.attachments = { "cw2_attachments" }

print( " " )
print( "[Entity Stubber] Loading stubs." )

for _, pack in pairs( CFC_Entity_Stubber.packs ) do
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

-- Saves all existing entity classes to a table.
local function buildEntTable()
    for _, listName in pairs( entLists ) do
        local listContents = list.Get( listName )

        for class in pairs( listContents ) do
            entTable[class] = true
        end
    end
end

-- Verifies all stubs existing then loading existing ones.
local function runStub( stubClass, stubFunc )
    if not entTable[stubClass] then
        print( "[Entity Stubber] Entity: " .. stubClass .. " not found, skipping..." )
        return
    end

    stubFunc()
    print( "[Entity Stubber] Entity: " .. stubClass .. " successfully loaded." )
end

-- Loops through stubs and calls runStub()
local function runStubs()
    print( " " )
    print( "[Entity Stubber] Applying stubs!" )

    for class, stub in pairs( registeredStubs ) do
        runStub( class, stub )
    end
end

hook.Add( "InitPostEntity", "StubberStart", function()
    buildEntTable()
    runStubs()
end)
