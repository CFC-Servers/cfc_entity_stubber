AddCSLuaFile( )

local function includeStubbers( )
    dir = dir .. "/"
    local files = file.Find( "cfc_entity_stubber/stubbers/*.lua", "LUA", "datedesc" )

    for _, stubber in ipairs( files ) do
        include( stubber )
        MsgC( Color( 41, 41, 41 ), "[", Color( 150, 150, 150 ), "Entity Stubber", Color( 41, 41, 41 ), "] ", Color( 0, 255, 0 ), stubber .. " successfully loaded.\n" )
    end
end

hook.Add( "InitPostEntity", "StubberStart", function( )
    includeStubbers( )
end )