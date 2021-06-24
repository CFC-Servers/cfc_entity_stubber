AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_m29satan" )
    weapon.Primary.RPM = 115
    weapon.Primary.ClipSize = 6
    weapon.Primary.DefaultClip = 30
    weapon.Primary.KickUp = 1
    weapon.Primary.KickDown = 0.5
    weapon.Primary.KickHorizontal = 0.5
    weapon.Primary.Automatic = false
    weapon.Primary.Ammo = "357"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 32
    weapon.Primary.Spread = .015
    weapon.Primary.IronAccuracy = .01
end )
