AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_m4a1" )
    weapon.Category = "CFC9k Assault Rifles"
    weapon.Spawnable = true

    weapon.Primary.RPM = 700
    weapon.Primary.ClipSize = 30

    weapon.Primary.KickUp = 0.8
    weapon.Primary.KickDown = 0.5
    weapon.Primary.KickHorizontal = 0.3
    weapon.Primary.Automatic = true
    weapon.Primary.Ammo = "ar2"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 25
    weapon.Primary.Spread = 0.05
	weapon.Primary.IronAccuracy = 0.02
end )
