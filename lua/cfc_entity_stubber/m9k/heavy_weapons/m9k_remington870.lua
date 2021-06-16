AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_remington870" )
    weapon.Primary.RPM = 70
    weapon.Primary.ClipSize = 8
    weapon.Primary.DefaultClip = 30
    weapon.Primary.KickUp = 1.25
    weapon.Primary.KickDown = 0.8
    weapon.Primary.KickHorizontal = 0.4
    weapon.Primary.Automatic = false
    weapon.Primary.Ammo = "buckshot"
    weapon.Primary.NumShots = 9
    weapon.Primary.Damage = 10
    weapon.Primary.Spread = .035
    weapon.Primary.IronAccuracy = .035
end )
