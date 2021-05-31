AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_tec9" )
    weapon.Primary.RPM = 825
    weapon.Primary.ClipSize = 32
    weapon.Primary.DefaultClip = 60
    weapon.Primary.KickUp = 0.2
    weapon.Primary.KickDown = 0.3
    weapon.Primary.KickHorizontal = 0.1
    weapon.Primary.Automatic = true
    weapon.Primary.Ammo = "smg1"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 17
    weapon.Primary.Spread = .029
    weapon.Primary.IronAccuracy = .019
end )
