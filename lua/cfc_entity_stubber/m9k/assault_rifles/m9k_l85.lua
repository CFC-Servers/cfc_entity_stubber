AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_l85" )
    weapon.Primary.RPM = 675
    weapon.Primary.ClipSize = 30
    weapon.Primary.DefaultClip = 60
    weapon.Primary.KickUp = .4
    weapon.Primary.KickDown = .2
    weapon.Primary.KickHorizontal = .5
    weapon.Primary.Automatic = true
    weapon.Primary.Ammo = "ar2"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 20
    weapon.Primary.Spread = .06
    weapon.Primary.IronAccuracy = .015
end )
