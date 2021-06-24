AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_mp5sd" )
    weapon.Primary.RPM = 700
    weapon.Primary.ClipSize = 30
    weapon.Primary.DefaultClip = 60
    weapon.Primary.KickUp = 0.2
    weapon.Primary.KickDown = 0.3
    weapon.Primary.KickHorizontal = 0.2
    weapon.Primary.Automatic = true
    weapon.Primary.Ammo = "smg1"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 10
    weapon.Primary.Spread = .025
    weapon.Primary.IronAccuracy = .015
end )
