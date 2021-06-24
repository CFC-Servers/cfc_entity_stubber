AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_usp" )
    weapon.Primary.RPM = 750
    weapon.Primary.ClipSize = 15
    weapon.Primary.DefaultClip = 45
    weapon.Primary.KickUp = 0.3
    weapon.Primary.KickDown = 0.3
    weapon.Primary.KickHorizontal = 0.3
    weapon.Primary.Automatic = false
    weapon.Primary.Ammo = "pistol"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 16
    weapon.Primary.Spread = .02
    weapon.Primary.IronAccuracy = .01
end )
