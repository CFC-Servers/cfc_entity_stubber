if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub( function()
    local weapon = weapons.GetStored( "m9k_milkormgl" )

    weapon.Spawnable = false
    weapon.AdminSpawnable = false
    weapon.Primary.Ammo = "Pistol"
    weapon.Primary.Round = ( "" )
end )