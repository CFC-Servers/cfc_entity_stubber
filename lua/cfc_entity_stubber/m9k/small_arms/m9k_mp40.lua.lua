AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_mp40" )
    weapon.Primary.RPM = 500
    weapon.Primary.ClipSize = 32
    weapon.Primary.DefaultClip = 64
    weapon.Primary.KickUp = 0.3
    weapon.Primary.KickDown = 0.2
    weapon.Primary.KickHorizontal = 0.4
    weapon.Primary.Automatic = true
    weapon.Primary.Ammo = "smg1"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 25
    weapon.Primary.Spread = .022
    weapon.Primary.IronAccuracy = .015
end )
