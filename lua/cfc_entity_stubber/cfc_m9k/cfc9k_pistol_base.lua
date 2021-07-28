AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_m92beretta" )
    weapon.Category = "CFC9k Pistols"
    weapon.Purpose = "A basic, all-around pistol"

    weapon.Primary.RPM = 500
    weapon.Primary.ClipSize = 12
    weapon.Primary.KickUp = 1.0
    weapon.Primary.KickDown = 0.5
    weapon.Primary.KickHorizontal = 0.3
    weapon.Primary.Automatic = false
    weapon.Primary.Ammo = "pistol"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 25
    weapon.Primary.Spread = 0.03
    weapon.Primary.IronAccuracy = 0.02
end )
