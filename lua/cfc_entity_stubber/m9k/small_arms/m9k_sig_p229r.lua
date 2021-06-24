AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_sig_p229r" )
    weapon.Primary.RPM = 500
    weapon.Primary.ClipSize = 12
    weapon.Primary.DefaultClip = 45
    weapon.Primary.KickUp = 0.4
    weapon.Primary.KickDown = 0.3
    weapon.Primary.KickHorizontal = 0.3
    weapon.Primary.Automatic = false
    weapon.Primary.Ammo = "pistol"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 17
    weapon.Primary.Spread = .025
    weapon.Primary.IronAccuracy = .015
end )