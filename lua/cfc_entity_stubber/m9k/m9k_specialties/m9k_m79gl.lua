if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub( function()
    local weapon = weapons.GetStored( "m9k_m79gl" )

    weapon.Spawnable = false
    weapon.AdminSpawnable = false
    weapon.Primary.Ammo = "pistol"
    weapon.Primary.Round = ( "" )
    weapon.Primary.Damage = 0
end )