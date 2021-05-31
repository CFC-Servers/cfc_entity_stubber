AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_sl8" )
    weapon.Primary.RPM = 300
    weapon.Primary.ClipSize = 30
    weapon.Primary.DefaultClip = 60
    weapon.Primary.KickUp = .6
    weapon.Primary.KickDown = .6
    weapon.Primary.KickHorizontal = .6
    weapon.Primary.Automatic = true
    weapon.Primary.Ammo = "ar2"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 60
    weapon.Primary.Spread = .015
    weapon.Primary.IronAccuracy = .001
end )
