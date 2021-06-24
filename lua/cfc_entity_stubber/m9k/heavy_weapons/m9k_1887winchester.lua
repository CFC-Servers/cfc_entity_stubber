AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_1887winchester" )
    weapon.Primary.RPM = 60
    weapon.Primary.ClipSize = 4
    weapon.Primary.DefaultClip = 12
    weapon.Primary.KickUp = 1
    weapon.Primary.KickDown = 0.8
    weapon.Primary.KickHorizontal = 0.6
    weapon.Primary.Automatic = false
    weapon.Primary.Ammo = "slam"
    weapon.Primary.NumShots = 10
    weapon.Primary.Damage = 5
    weapon.Primary.Spread = .042
    weapon.Primary.IronAccuracy = .042
end )
