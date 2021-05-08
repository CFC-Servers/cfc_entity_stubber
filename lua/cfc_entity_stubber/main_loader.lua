cfcEntityStubber = { }
cfcEntityStubber.stubQueue = { }
cfcEntityStubber.stubbers = { }
local stubbersDirectory = "cfc_entity_stubber/stubbers/"

-- MAIN STUBBER FUNCTIONS 
function cfcEntityStubber.includeStubbers( )
    local files = file.Find( stubbersDirectory .. "*.lua", "LUA", "datedesc" )

    for _, stubber in ipairs( files ) do
        MsgC( Color( 41, 41, 41 ), "[", Color( 150, 150, 150 ), "Stubber", Color( 41, 41, 41 ), "] ", Color( 0, 255, 0 ), stubber .. " successfully loaded.\n" )
        include( stubbersDirectory .. stubber )
    end
end

function cfcEntityStubber.getStubs( tab )
    for _, dir in ipairs( tab ) do
        local stubFolderPath = "cfc_entity_stubber/" .. dir .. "/"
        -- List all stubs in the packs folder, sorted by names ascending
        local stubFiles, stubFolders = file.Find( stubFolderPath .. "*", "LUA", "nameasc" )
        local emptyFolder = table.IsEmpty( stubFiles )
        local emptySubFolder = table.IsEmpty( stubFolders )

        if emptyFolder and emptySubFolder then
            MsgC( Color( 41, 41, 41 ), "[", Color( 150, 150, 150 ), "Stubber", Color( 41, 41, 41 ), "] ", Color( 255, 0, 0 ), "folder " .. dir .. " is empty or doesn't exist.\n" )

            return
        end

        if not emptySubFolder then
            for _, stubFile in ipairs( stubFolders ) do
                local subfolderPath = stubFolderPath .. stubFile
                local subfolderFiles = file.Find( subfolderPath .. "/*.lua", "LUA", "nameasc" )

                for _, fileName in pairs( subfolderFiles ) do
                    include( subfolderPath .. "/" .. fileName )
                end
            end
        end

        if not emptyFolder then
            for _, stubFile in ipairs( stubFiles ) do
                print( stubFile )
            end
        end
        -- for _, stub in next, stubs do
        --     if stub then
        --         local stubPath = packPath .. stub
        --         include( stubPath )
        --     end
        -- end
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

-- HOOKS
hook.Add( "InitPostEntity", "StubberStart", function( )
    cfcEntityStubber.includeStubbers( )
    cfcEntityStubber.getStubs( cfcEntityStubber.stubbers )
    cfcEntityStubber.runStubs( cfcEntityStubber.stubQueue )
end )