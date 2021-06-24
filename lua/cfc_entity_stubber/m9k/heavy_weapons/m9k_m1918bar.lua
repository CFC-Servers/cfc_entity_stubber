AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_m1918bar" )
    weapon.Primary.RPM = 450
    weapon.Primary.ClipSize = 20
    weapon.Primary.DefaultClip = 60
    weapon.Primary.KickUp = 0.6
    weapon.Primary.KickDown = 0.4
    weapon.Primary.KickHorizontal = 0.5
    weapon.Primary.Automatic = true
    weapon.Primary.Ammo = "AirboatGun"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 25
    weapon.Primary.Spread = .07
    weapon.Primary.IronAccuracy = .015
end )
