AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_winchester73" )
    weapon.Primary.RPM = 66
    weapon.Primary.ClipSize = 8
    weapon.Primary.DefaultClip = 30
    weapon.Primary.KickUp = .2
    weapon.Primary.KickDown = 0
    weapon.Primary.KickHorizontal = 0.1
    weapon.Primary.Automatic = false
    weapon.Primary.Ammo = "AirboatGun"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 85
    weapon.Primary.Spread = .01
    weapon.Primary.IronAccuracy = .001
end )
