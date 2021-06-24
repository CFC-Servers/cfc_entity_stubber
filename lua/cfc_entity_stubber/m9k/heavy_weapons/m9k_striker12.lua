AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_striker12" )
    weapon.Primary.RPM = 365
    weapon.Primary.ClipSize = 12
    weapon.Primary.DefaultClip = 36
    weapon.Primary.KickUp = 4
    weapon.Primary.KickDown = 0.5
    weapon.Primary.KickHorizontal = .6
    weapon.Primary.Automatic = true
    weapon.Primary.Ammo = "buckshot"
    weapon.Primary.NumShots = 6
    weapon.Primary.Damage = 3
    weapon.Primary.Spread = .04
    weapon.Primary.IronAccuracy = .04
end )
