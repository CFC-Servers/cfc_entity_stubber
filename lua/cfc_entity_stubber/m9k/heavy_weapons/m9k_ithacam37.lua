AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_ithacam37" )
    weapon.Primary.RPM = 60
    weapon.Primary.ClipSize = 6
    weapon.Primary.DefaultClip = 30
    weapon.Primary.KickUp = .9
    weapon.Primary.KickDown = 0.6
    weapon.Primary.KickHorizontal = 0.6
    weapon.Primary.Automatic = false
    weapon.Primary.Ammo = "buckshot"
    weapon.Primary.NumShots = 8
    weapon.Primary.Damage = 12
    weapon.Primary.Spread = .023
    weapon.Primary.IronAccuracy = .023
end )
