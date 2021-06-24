AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_amd65" )
    weapon.Primary.RPM = 750
    weapon.Primary.ClipSize = 20
    weapon.Primary.DefaultClip = 60
    weapon.Primary.KickUp = .7
    weapon.Primary.KickDown = 0.2
    weapon.Primary.KickHorizontal = 0.4
    weapon.Primary.Automatic = true
    weapon.Primary.Ammo = "ar2"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 26
    weapon.Primary.Spread = .08
    weapon.Primary.IronAccuracy = .011
end )
