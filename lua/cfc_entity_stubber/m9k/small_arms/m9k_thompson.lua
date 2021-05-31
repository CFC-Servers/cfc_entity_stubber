AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_thompson" )
    weapon.Primary.RPM = 575
    weapon.Primary.ClipSize = 75
    weapon.Primary.DefaultClip = 150
    weapon.Primary.KickUp = 0.7
    weapon.Primary.KickDown = 0.6
    weapon.Primary.KickHorizontal = 0.65
    weapon.Primary.Automatic = true
    weapon.Primary.Ammo = "smg1"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 22
    weapon.Primary.Spread = .03
    weapon.Primary.IronAccuracy = .019
end )
