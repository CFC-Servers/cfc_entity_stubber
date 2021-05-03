if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub( function()
    local weapon = weapons.GetStored( "m9k_ares_shrike" )

    weapon.Primary.Ammo = "AirboatGun"
    weapon.Primary.Damage = 20
    weapon.Primary.Spread = .08
    weapon.Primary.Sound = Sound("Weapon_249M.Single")
end )
