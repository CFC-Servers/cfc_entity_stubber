AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_usas" )
    weapon.Primary.RPM = 200
    weapon.Primary.ClipSize = 10
    weapon.Primary.DefaultClip = 60
    weapon.Primary.KickUp = 1
    weapon.Primary.KickDown = 0.4
    weapon.Primary.KickHorizontal = 0.7
    weapon.Primary.Automatic = true
    weapon.Primary.Ammo = "buckshot"
    weapon.Primary.NumShots = 10
    weapon.Primary.Damage = 3
    weapon.Primary.Spread = .06
    weapon.Primary.IronAccuracy = .06
end )
