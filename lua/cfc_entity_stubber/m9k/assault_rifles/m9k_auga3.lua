AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_auga3" )
    weapon.Primary.RPM = 700
    weapon.Primary.ClipSize = 30
    weapon.Primary.DefaultClip = 60
    weapon.Primary.KickUp = 1.5
    weapon.Primary.KickDown = 1.75
    weapon.Primary.KickHorizontal = 1.5
    weapon.Primary.Automatic = true
    weapon.Primary.Ammo = "ar2"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 35
    weapon.Primary.Spread = .03
    weapon.Primary.SpreadZoomed = 0.01
    weapon.Primary.IronAccuracy = .02
    weapon.Primary.SpreadBefore = 0.03
end )
