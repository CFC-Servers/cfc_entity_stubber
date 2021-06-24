AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_spas12" )
    weapon.Primary.RPM = 300
    weapon.Primary.ClipSize = 8
    weapon.Primary.DefaultClip = 30
    weapon.Primary.KickUp = 1.5
    weapon.Primary.KickDown = 0.3
    weapon.Primary.KickHorizontal = 0.7
    weapon.Primary.Automatic = false
    weapon.Primary.Ammo = "buckshot"
    weapon.Primary.NumShots = 10
    weapon.Primary.Damage = 3
    weapon.Primary.Spread = .05
    weapon.Primary.IronAccuracy = .05
end )
