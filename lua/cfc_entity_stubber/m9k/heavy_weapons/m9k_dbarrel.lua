AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_dbarrel" )
    weapon.Primary.RPM = 50
    weapon.Primary.ClipSize = 2
    weapon.Primary.DefaultClip = 30
    weapon.Primary.KickUp = 10
    weapon.Primary.KickDown = 5
    weapon.Primary.KickHorizontal = 5
    weapon.Primary.Automatic = false
    weapon.Primary.Ammo = "AirboatGun"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 85
    weapon.Primary.Spread = .03
    weapon.Primary.IronAccuracy = .002
end )
