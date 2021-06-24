AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_m16a4_acog" )
    weapon.Primary.RPM = 637
    weapon.Primary.ClipSize = 30
    weapon.Primary.DefaultClip = 60
    weapon.Primary.KickUp = .4
    weapon.Primary.KickDown = .3
    weapon.Primary.KickHorizontal = .6
    weapon.Primary.Automatic = false
    weapon.Primary.Ammo = "ar2"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 32
    weapon.Primary.Spread = .06
    weapon.Primary.IronAccuracy = .01
end )
