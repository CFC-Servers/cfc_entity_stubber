AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_ump45" )
    weapon.Primary.RPM = 600
    weapon.Primary.ClipSize = 25
    weapon.Primary.DefaultClip = 60
    weapon.Primary.KickUp = 0.2
    weapon.Primary.KickDown = 0.4
    weapon.Primary.KickHorizontal = 0.45
    weapon.Primary.Automatic = true
    weapon.Primary.Ammo = "smg1"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 20
    weapon.Primary.Spread = .028
    weapon.Primary.IronAccuracy = .018
end )
