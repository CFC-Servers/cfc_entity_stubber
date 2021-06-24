AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_ragingbull" )
    weapon.Primary.RPM = 80
    weapon.Primary.ClipSize = 6
    weapon.Primary.DefaultClip = 30
    weapon.Primary.KickUp = 1
    weapon.Primary.KickDown = 0.5
    weapon.Primary.KickHorizontal = 0.5
    weapon.Primary.Automatic = false
    weapon.Primary.Ammo = "buckshot"
    weapon.Primary.NumShots = 3
    weapon.Primary.Damage = 25
    weapon.Primary.Spread = .06
    weapon.Primary.IronAccuracy = .06
end )
