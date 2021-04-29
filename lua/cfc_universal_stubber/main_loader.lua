AddCSLuaFile( )

local function includeStubbers( )
    dir = dir .. "/"
    local files = file.Find( "cfc_entity_stubber/stubbers/*.lua", "LUA", "datedesc" )

    for _, stubber in ipairs( files ) do
        include( stubber )
    end
end

includeStubbers( )