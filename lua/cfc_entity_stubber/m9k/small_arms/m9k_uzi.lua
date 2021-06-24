AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_uzi" )
    weapon.Primary.RPM = 600
    weapon.Primary.ClipSize = 32
    weapon.Primary.DefaultClip = 64
    weapon.Primary.KickUp = 0.3
    weapon.Primary.KickDown = 0.3
    weapon.Primary.KickHorizontal = 0.3
    weapon.Primary.Automatic = true
    weapon.Primary.Ammo = "smg1"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 15
    weapon.Primary.Spread = .028
    weapon.Primary.IronAccuracy = .018
end )
