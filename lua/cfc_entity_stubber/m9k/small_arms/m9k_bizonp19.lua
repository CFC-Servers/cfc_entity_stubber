AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_bizonp19" )
    weapon.Primary.RPM = 675
    weapon.Primary.ClipSize = 64
    weapon.Primary.DefaultClip = 128
    weapon.Primary.KickUp = 0.6
    weapon.Primary.KickDown = 0.4
    weapon.Primary.KickHorizontal = 0.5
    weapon.Primary.Automatic = true
    weapon.Primary.Ammo = "smg1"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 12
    weapon.Primary.Spread = .02
    weapon.Primary.IronAccuracy = .015
end )
