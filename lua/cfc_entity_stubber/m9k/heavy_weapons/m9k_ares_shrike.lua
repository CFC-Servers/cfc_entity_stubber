AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_ares_shrike" )
    weapon.Primary.RPM = 650
    weapon.Primary.ClipSize = 200
    weapon.Primary.DefaultClip = 400
    weapon.Primary.KickUp = 0.6
    weapon.Primary.KickDown = 0.4
    weapon.Primary.KickHorizontal = 0.5
    weapon.Primary.Automatic = true
    weapon.Primary.Ammo = "AirboatGun"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 20
    weapon.Primary.Spread = .08
    weapon.Primary.IronAccuracy = .02
end )
