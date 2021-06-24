AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_fal" )
    weapon.Primary.RPM = 750
    weapon.Primary.ClipSize = 20
    weapon.Primary.DefaultClip = 60
    weapon.Primary.KickUp = 0.5
    weapon.Primary.KickDown = 0.3
    weapon.Primary.KickHorizontal = 0.5
    weapon.Primary.Automatic = false
    weapon.Primary.Ammo = "ar2"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 25
    weapon.Primary.Spread = .06
    weapon.Primary.IronAccuracy = .01
end )
