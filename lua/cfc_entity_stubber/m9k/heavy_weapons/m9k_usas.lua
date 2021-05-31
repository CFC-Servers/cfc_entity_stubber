AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_usas" )
    weapon.Primary.RPM = 260
    weapon.Primary.ClipSize = 20
    weapon.Primary.DefaultClip = 60
    weapon.Primary.KickUp = 1
    weapon.Primary.KickDown = 0.4
    weapon.Primary.KickHorizontal = 0.7
    weapon.Primary.Automatic = true
    weapon.Primary.Ammo = "buckshot"
    weapon.Primary.NumShots = 10
    weapon.Primary.Damage = 7
    weapon.Primary.Spread = .048
    weapon.Primary.IronAccuracy = .048
end )
