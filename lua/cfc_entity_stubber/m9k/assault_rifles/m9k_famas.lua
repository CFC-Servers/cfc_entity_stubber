AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_famas" )
    weapon.Primary.RPM = 950
    weapon.Primary.ClipSize = 30
    weapon.Primary.DefaultClip = 60
    weapon.Primary.KickUp = 0.4
    weapon.Primary.KickDown = 0.2
    weapon.Primary.KickHorizontal = 0.4
    weapon.Primary.Automatic = true
    weapon.Primary.Ammo = "ar2"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 20
    weapon.Primary.Spread = .04
    weapon.Primary.IronAccuracy = .015
end )
