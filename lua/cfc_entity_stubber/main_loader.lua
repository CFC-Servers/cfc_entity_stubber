cfcEntityStubber = {}
cfcEntityStubber.stubQueue = {}
cfcEntityStubber.stubbers = {}
cfcEntityStubber.oldWeaponStats = {}
local stubbersDirectory = "cfc_entity_stubber/stubbers/"

-- MAIN STUBBER FUNCTIONS 
function cfcEntityStubber.printMessage( text, color )
    MsgC( Color( 41, 41, 41 ), "[", Color( 150, 150, 150 ), "Stubber", Color( 41, 41, 41 ), "] ", color, text .. "\n" )
end

function cfcEntityStubber.includeStubbers()
    local files = file.Find( stubbersDirectory .. "*.lua", "LUA", "datedesc" )

    for _, stubber in ipairs( files ) do
        cfcEntityStubber.printMessage( stubber .. " successfully loaded.", Color( 0, 255, 0 ) )
        include( stubbersDirectory .. stubber )
    end
end

function cfcEntityStubber.loadStub( dir )
    local stubFolderPath = "cfc_entity_stubber/" .. dir .. "/"
    local stubFiles, stubFolders = file.Find( stubFolderPath .. "*", "LUA" )
    local noFiles = table.IsEmpty( stubFiles )
    local noFolders = table.IsEmpty( stubFolders )

    if noFiles and noFolders then
        cfcEntityStubber.printMessage( "folder " .. dir .. " is empty or doesn't exist.", Color( 255, 0, 0 ) )
        return
    end

    for _, stubFile in ipairs( stubFiles ) do
        include( stubFolderPath .. stubFile )
    end

    for _, stubFile in ipairs( stubFolders ) do
        local subfolderPath = stubFolderPath .. stubFile .. "/"
        local subfolderFiles = file.Find( subfolderPath .. "*.lua", "LUA", "nameasc" )

        for _, fileName in pairs( subfolderFiles ) do
            include( subfolderPath .. fileName )
        end
    end
end

function cfcEntityStubber.loadStubs( tab )
    for _, dir in ipairs( tab ) do
        cfcEntityStubber.loadStub( dir )
    end
end

function cfcEntityStubber.runStubs( stubQueue )
    for _, stub in pairs( stubQueue ) do
        if SERVER then
            ProtectedCall( stub )
        end

        if CLIENT then
            local function catch( err )
                cfcEntityStubber.printMessage( "ERROR: " .. err, Color( 255, 125, 0 ) )
            end

            xpcall( stub, catch )
        end
    end
end

-- STUBBER FUNCTIONS
-- Accepts the folder name of the stubbers files
function cfcEntityStubber.registerStubber( stubberName )
    table.insert( cfcEntityStubber.stubbers, stubberName )
end

function cfcEntityStubber.registerStub( stub )
    table.insert( cfcEntityStubber.stubQueue, stub )
end

function cfcEntityStubber.getWeapon( wepClass )
    local current = cfcEntityStubber.oldWeaponStats[wepClass]
    cfcEntityStubber.oldWeaponStats[wepClass] = current or weapons.Get( wepClass )

    return weapons.GetStored( wepClass )
end

-- HOOKS
hook.Add( "InitPostEntity", "StubberStart", function()
    cfcEntityStubber.includeStubbers()
    cfcEntityStubber.loadStubs( cfcEntityStubber.stubbers )
    cfcEntityStubber.runStubs( cfcEntityStubber.stubQueue )

    hook.Run( "CFC_EntityStubber_PostRunStubs" )
end )
