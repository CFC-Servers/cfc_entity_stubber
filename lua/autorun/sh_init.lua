--require( "cfcwaiter" )

AddCSLuaFile()

CFC_M9k_Stubber = {}

local stubQueue = {}

function CFC_M9k_Stubber.registerStub( stub )
    table.insert( stubQueue, stub )
end

-- Load our stubs
local packs = {"m9k_heavy_weapons", "m9k_small_arms_pack", "m9k_specialties", "m9k_assault_rifles", "cw2"}

for _, pack in pairs( packs ) do
    local packPath = "cfc_m9k_stubber/stubs/" .. pack .. "/"

    -- List all stubs in the packs folder, sorted by names ascending
    local stubs, _ = file.Find( packPath .. "*.lua", "LUA", "nameasc" )

    for _, stub in next, stubs do
        if stub then
            local stubPath = packPath .. stub
            print( "[M9k Stubber] Loading " .. stubPath .. "..." )

            include( stubPath )
        end
    end
end

-- local function m9kIsLoaded()
--     -- "m9k_winchester73" is the last weapon listed alphabetically in the last pack defined, so it'll likely be the last one loaded?
--     -- in any case it shouldn't matter too much. they're all loaded within ms of eachother
--     return weapons.GetStored( "m9k_winchester73" ) ~= nil
-- end

local function runStubs()
    print( "[M9k Stubber] Running stubs!" )
    for _, stub in pairs( stubQueue ) do
        stub()
    end
end

-- local function handleWaiterTimeout()
--     print( "[M9k Stubber] Waiter timed out! Not running stubs!" )
-- end

--Waiter.waitFor( m9kIsLoaded, runStubs, handleWaiterTimeout )
hook.Add( "InitPostEntity", "StubberStart", function()
    runStubs()
end)
