AddCSLuaFile()

-- Stub tables
CFC_Entity_Stubber.packs = { "cw2_guns", "cw2_attachments" }

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

MsgC( Color( 41, 41, 41 ), "\n[", Color( 150, 150, 150 ), "Entity Stubber", Color( 41, 41, 41 ), "] ", Color( 201, 201, 201 ), "Loading stubs...\n" )

for _, pack in pairs( CFC_Entity_Stubber.packs ) do
    local packPath = "cfc_entity_stubber/stubs/" .. pack .. "/"

    -- List all stubs in the packs folder, sorted by names ascending
    local stubs, _ = file.Find( packPath .. "*.lua", "LUA", "nameasc" )

    for _, stub in pairs( stubs ) do
        if stub then
            local stubPath = packPath .. stub
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
    table.Merge( entTable, CustomizableWeaponry.registeredAttachmentsSKey )
end

-- Verifies all stubs existing then loading existing ones.
local function runStub( stubClass, stubFunc )
    if not entTable[stubClass] then
        MsgC( Color( 41, 41, 41 ), "[", Color( 150, 150, 150 ), "Entity Stubber", Color( 41, 41, 41 ), "] ", Color( 255, 0, 0 ), stubClass .. " not found, skipping...\n" )
        return
    end

    stubFunc()
    MsgC( Color( 41, 41, 41 ), "[", Color( 150, 150, 150 ), "Entity Stubber", Color( 41, 41, 41 ), "] ", Color( 0, 255, 0 ), stubClass .. " successfully loaded.\n" )
end

-- Loops through stubs and calls runStub()
local function runStubs()
    MsgC( Color( 41, 41, 41 ), "\n[", Color( 150, 150, 150 ), "Entity Stubber", Color( 41, 41, 41 ), "] ", Color( 201, 201, 201 ), "Applying stubs...\n" )

    for class, stub in pairs( registeredStubs ) do
        runStub( class, stub )
    end
end

hook.Add( "InitPostEntity", "StubberStart", function()
    buildEntTable()
    runStubs()
end)
