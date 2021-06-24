AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_g3a3" )
    weapon.Primary.RPM = 550
    weapon.Primary.ClipSize = 20
    weapon.Primary.DefaultClip = 60
    weapon.Primary.KickUp = 0.4
    weapon.Primary.KickDown = 0.3
    weapon.Primary.KickHorizontal = 0.5
    weapon.Primary.Automatic = true
    weapon.Primary.Ammo = "ar2"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 25
    weapon.Primary.Spread = .08
    weapon.Primary.IronAccuracy = .016
end )
