AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_smgp90" )
    weapon.Primary.RPM = 900
    weapon.Primary.ClipSize = 50
    weapon.Primary.DefaultClip = 100
    weapon.Primary.KickUp = 0.6
    weapon.Primary.KickDown = 0.4
    weapon.Primary.KickHorizontal = 0.5
    weapon.Primary.Automatic = true
    weapon.Primary.Ammo = "smg1"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 18
    weapon.Primary.Spread = .032
    weapon.Primary.IronAccuracy = .02
end )
