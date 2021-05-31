AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_minigun" )

    weapon.Primary.RPM = 1500
    weapon.Primary.ClipSize = 300
    weapon.Primary.DefaultClip = 0

    weapon.Primary.KickUp = 1.5
    weapon.Primary.KickDown = 0.2
    weapon.Primary.KickHorizontal = 0.2
    weapon.Primary.Automatic = true
    weapon.Primary.Ammo = "ar2"
    weapon.Primary.NumShots = 2
    weapon.Primary.Damage = 6
    weapon.Primary.Spread = .06
    weapon.Primary.IronAccuracy = .08
end )