AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_usc" )
    weapon.Primary.RPM = 600
    weapon.Primary.ClipSize = 25
    weapon.Primary.DefaultClip = 60
    weapon.Primary.KickUp = 0.2
    weapon.Primary.KickDown = 0.4
    weapon.Primary.KickHorizontal = 0.45
    weapon.Primary.Automatic = false
    weapon.Primary.Ammo = "smg1"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 23
    weapon.Primary.Spread = .02
    weapon.Primary.IronAccuracy = .01
end )
