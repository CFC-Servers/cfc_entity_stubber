AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_deagle" )
    weapon.Primary.RPM = 600
    weapon.Primary.ClipSize = 7
    weapon.Primary.DefaultClip = 30
    weapon.Primary.KickUp = 1
    weapon.Primary.KickDown = 0.5
    weapon.Primary.KickHorizontal = 0.5
    weapon.Primary.Automatic = false
    weapon.Primary.Ammo = "357"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 30
    weapon.Primary.Spread = .025
    weapon.Primary.IronAccuracy = .015
end )
