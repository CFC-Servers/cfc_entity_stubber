AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_browningauto5" )
    weapon.Primary.RPM = 200
    weapon.Primary.ClipSize = 6
    weapon.Primary.DefaultClip = 30
    weapon.Primary.KickUp = 1
    weapon.Primary.KickDown = 0.8
    weapon.Primary.KickHorizontal = 0.6
    weapon.Primary.Automatic = false
    weapon.Primary.Ammo = "buckshot"
    weapon.Primary.NumShots = 9
    weapon.Primary.Damage = 3
    weapon.Primary.Spread = .05
    weapon.Primary.IronAccuracy = .05
end )
