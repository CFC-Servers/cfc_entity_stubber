AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_jackhammer" )
    weapon.Primary.RPM = 240
    weapon.Primary.ClipSize = 10
    weapon.Primary.DefaultClip = 30
    weapon.Primary.KickUp = 1
    weapon.Primary.KickDown = 0.5
    weapon.Primary.KickHorizontal = 0.4
    weapon.Primary.Automatic = true
    weapon.Primary.Ammo = "buckshot"
    weapon.Primary.NumShots = 6
    weapon.Primary.Damage = 3
    weapon.Primary.Spread = .045
    weapon.Primary.IronAccuracy = .045
end )
