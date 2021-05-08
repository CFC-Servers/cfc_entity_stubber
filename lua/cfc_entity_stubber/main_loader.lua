cfcEntityStubber = { }
cfcEntityStubber.stubQueue = { }
cfcEntityStubber.stubbers = { }
cfcEntityStubber.oldWeaponStats = { }
local stubbersDirectory = "cfc_entity_stubber/stubbers/"

-- MAIN STUBBER FUNCTIONS 
function cfcEntityStubber.includeStubbers( )
    local files = file.Find( stubbersDirectory .. "*.lua", "LUA", "datedesc" )

    for _, stubber in ipairs( files ) do
        MsgC( Color( 41, 41, 41 ), "[", Color( 150, 150, 150 ), "Stubber", Color( 41, 41, 41 ), "] ", Color( 0, 255, 0 ), stubber .. " successfully loaded.\n" )
        include( stubbersDirectory .. stubber )
    end
end

function cfcEntityStubber.loadStubs( tab )
    for _, dir in ipairs( tab ) do
        local stubFolderPath = "cfc_entity_stubber/" .. dir .. "/"
        -- List all stubs in the packs folder, sorted by names ascending
        local stubFiles, stubFolders = file.Find( stubFolderPath .. "*", "LUA", "nameasc" )
        local hasFiles = table.IsEmpty( stubFiles )
        local hasFolders = table.IsEmpty( stubFolders )

        if hasFiles and hasFolders then
            MsgC( Color( 41, 41, 41 ), "[", Color( 150, 150, 150 ), "Stubber", Color( 41, 41, 41 ), "] ", Color( 255, 0, 0 ), "folder " .. dir .. " is empty or doesn't exist.\n" )

            return
        end

        if not hasFolders then
            for _, stubFile in ipairs( stubFolders ) do
                local subfolderPath = stubFolderPath .. stubFile
                local subfolderFiles = file.Find( subfolderPath .. "/*.lua", "LUA", "nameasc" )

                for _, fileName in pairs( subfolderFiles ) do
                    include( subfolderPath .. "/" .. fileName )
                end
            end
        end

        if not hasFiles then
            for _, stubFile in ipairs( stubFiles ) do
                print( stubFile )
            end
        end
    end
end

function cfcEntityStubber.runStubs( stubQueue )
    for _, stub in pairs( stubQueue ) do
        stub( )
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
    weapon = weapons.GetStored( wepClass )
    cfcEntityStubber.oldWeaponStats[ wepClass ] = weapon

    return weapon
end

-- HOOKS
hook.Add( "InitPostEntity", "StubberStart", function( )
    cfcEntityStubber.includeStubbers( )
    cfcEntityStubber.loadStubs( cfcEntityStubber.stubbers )
    cfcEntityStubber.runStubs( cfcEntityStubber.stubQueue )
end )