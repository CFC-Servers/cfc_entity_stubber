if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub( function()
    local weapon = weapons.GetStored( "m9k_sticky_grenade" )

    weapon.Spawnable = false
    weapon.AdminSpawnable = false
end )