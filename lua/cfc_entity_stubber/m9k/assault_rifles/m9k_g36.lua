AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_g36" )
    weapon.Primary.RPM = 750
    weapon.Primary.ClipSize = 30
    weapon.Primary.DefaultClip = 60
    weapon.Primary.KickUp = 0.3
    weapon.Primary.KickDown = 0.1
    weapon.Primary.KickHorizontal = 0.3
    weapon.Primary.Automatic = true
    weapon.Primary.Ammo = "ar2"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 22
    weapon.Primary.Spread = .05
    weapon.Primary.IronAccuracy = .01
end )
