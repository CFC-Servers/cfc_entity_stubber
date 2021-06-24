AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_m249lmg" )
    weapon.Primary.RPM = 855
    weapon.Primary.ClipSize = 150
    weapon.Primary.DefaultClip = 300
    weapon.Primary.KickUp = 0.6
    weapon.Primary.KickDown = 0.4
    weapon.Primary.KickHorizontal = 0.5
    weapon.Primary.Automatic = true
    weapon.Primary.Ammo = "AirboatGun"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 20
    weapon.Primary.Spread = .08
    weapon.Primary.IronAccuracy = .024
end )
