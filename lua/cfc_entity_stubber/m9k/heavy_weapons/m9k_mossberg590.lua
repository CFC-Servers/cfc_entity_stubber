AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_mossberg590" )
    weapon.Primary.RPM = 50
    weapon.Primary.ClipSize = 8
    weapon.Primary.DefaultClip = 30
    weapon.Primary.KickUp = 1
    weapon.Primary.KickDown = 0.8
    weapon.Primary.KickHorizontal = 0.8
    weapon.Primary.Automatic = false
    weapon.Primary.Ammo = "buckshot"
    weapon.Primary.NumShots = 10
    weapon.Primary.Damage = 5
    weapon.Primary.Spread = .03
    weapon.Primary.IronAccuracy = .03
end )
