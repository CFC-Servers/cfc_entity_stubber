if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub( function()
    local weapon = weapons.GetStored( "m9k_ak74" )

    weapon.Spawnable = false
    weapon.AdminSpawnable = false
    weapon.Primary.KickDown = 0.1
    weapon.Primary.Damage = 26
    weapon.Primary.Spread = .08
end )