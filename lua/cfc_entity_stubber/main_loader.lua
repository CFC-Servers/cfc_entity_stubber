AddCSLuaFile( )
local directory = "cfc_entity_stubber/stubbers/"

local function includeStubbers( )
    local files = file.Find( directory .. "*.lua", "LUA", "datedesc" )

    for _, stubber in ipairs( files ) do
        MsgC( Color( 41, 41, 41 ), "[", Color( 150, 150, 150 ), "Stubber", Color( 41, 41, 41 ), "] ", Color( 0, 255, 0 ), stubber .. " successfully loaded.\n" )
        include( directory .. stubber )
    end
end

hook.Add( "InitPostEntity", "StubberStart", function( )
    includeStubbers( )
end )