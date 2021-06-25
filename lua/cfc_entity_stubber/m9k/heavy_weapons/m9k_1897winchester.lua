AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_1897winchester" )
    weapon.Primary.RPM = 50
    weapon.Primary.ClipSize = 4
    weapon.Primary.DefaultClip = 12
    weapon.Primary.KickUp = 0.9
    weapon.Primary.KickDown = 0.6
    weapon.Primary.KickHorizontal = 0.4
    weapon.Primary.Automatic = false
    weapon.Primary.Ammo = "slam"
    weapon.Primary.NumShots = 11
    weapon.Primary.Damage = 10
    weapon.Primary.Spread = .1
    weapon.Primary.IronAccuracy = .1
end )
