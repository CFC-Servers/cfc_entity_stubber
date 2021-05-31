AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_m14sp" )
    weapon.Primary.RPM = 750
    weapon.Primary.ClipSize = 20
    weapon.Primary.DefaultClip = 60
    weapon.Primary.KickUp = 0.6
    weapon.Primary.KickDown = 0.6
    weapon.Primary.KickHorizontal = 0.6
    weapon.Primary.Automatic = false
    weapon.Primary.Ammo = "ar2"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 32
    weapon.Primary.Spread = .01
    weapon.Primary.IronAccuracy = .001
end )
