if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub( function()
    local weapon = weapons.GetStored( "m9k_m249lmg" )

    weapon.Primary.Ammo = "AirboatGun"
    weapon.Primary.Damage = 20
    weapon.Primary.Spread = .08
end )