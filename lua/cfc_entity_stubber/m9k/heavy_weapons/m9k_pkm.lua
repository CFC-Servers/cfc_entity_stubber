AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_pkm" )
    weapon.Primary.RPM = 750
    weapon.Primary.ClipSize = 100
    weapon.Primary.DefaultClip = 200
    weapon.Primary.KickUp = 0.6
    weapon.Primary.KickDown = 0.3
    weapon.Primary.KickHorizontal = 0.5
    weapon.Primary.Automatic = true
    weapon.Primary.Ammo = "AirboatGun"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 20
    weapon.Primary.Spread = .07
    weapon.Primary.IronAccuracy = .02
end )
