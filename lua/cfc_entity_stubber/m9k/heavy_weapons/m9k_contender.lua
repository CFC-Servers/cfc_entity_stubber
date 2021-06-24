AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_contender" )
    weapon.Primary.RPM = 35
    weapon.Primary.ClipSize = 1
    weapon.Primary.DefaultClip = 60
    weapon.Primary.KickUp = 1
    weapon.Primary.KickDown = 1
    weapon.Primary.KickHorizontal = 1
    weapon.Primary.Automatic = false
    weapon.Primary.Ammo = "ar2"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 55
    weapon.Primary.Spread = .01
    weapon.Primary.IronAccuracy = .00015
end )
