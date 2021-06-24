AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_glock" )
    weapon.Primary.RPM = 1200
    weapon.Primary.ClipSize = 32
    weapon.Primary.DefaultClip = 64
    weapon.Primary.KickUp = 0.4
    weapon.Primary.KickDown = 0.3
    weapon.Primary.KickHorizontal = 0.3
    weapon.Primary.Automatic = true
    weapon.Primary.Ammo = "pistol"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 5
    weapon.Primary.Spread = .04
    weapon.Primary.IronAccuracy = .02
end )
