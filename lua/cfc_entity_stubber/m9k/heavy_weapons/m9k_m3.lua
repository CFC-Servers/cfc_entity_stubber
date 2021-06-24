AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_m3" )
    weapon.Primary.RPM = 50
    weapon.Primary.ClipSize = 8
    weapon.Primary.DefaultClip = 30
    weapon.Primary.KickUp = 0.8
    weapon.Primary.KickDown = 0.5
    weapon.Primary.KickHorizontal = 0.3
    weapon.Primary.Automatic = false
    weapon.Primary.Ammo = "buckshot"
    weapon.Primary.NumShots = 9
    weapon.Primary.Damage = 6
    weapon.Primary.Spread = .0326
    weapon.Primary.IronAccuracy = .0326
end )
