AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_sl8" )
    weapon.Primary.RPM = 250
    weapon.Primary.ClipSize = 30
    weapon.Primary.DefaultClip = 60
    weapon.Primary.KickUp = 1
    weapon.Primary.KickDown = -1
    weapon.Primary.KickHorizontal = .6
    weapon.Primary.Automatic = true
    weapon.Primary.Ammo = "ar2"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 45
    weapon.Primary.Spread = .015
    weapon.Primary.IronAccuracy = .001
end )
