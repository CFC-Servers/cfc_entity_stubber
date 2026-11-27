if SERVER then
    AddCSLuaFile()
    AddCSLuaFile( "cfc_entity_stubber/main_loader.lua" )
end

include( "cfc_entity_stubber/main_loader.lua" )
