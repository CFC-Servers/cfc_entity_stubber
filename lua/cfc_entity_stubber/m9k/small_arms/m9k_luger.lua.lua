AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_luger" )
    weapon.Primary.RPM = 825
    weapon.Primary.ClipSize = 8
    weapon.Primary.DefaultClip = 45
    weapon.Primary.KickUp = 0.35
    weapon.Primary.KickDown = 0.3
    weapon.Primary.KickHorizontal = 0.2
    weapon.Primary.Automatic = false
    weapon.Primary.Ammo = "pistol"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 23
    weapon.Primary.Spread = .021
    weapon.Primary.IronAccuracy = .011
end )
