AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_m14sp" )
    weapon.Category = "CFC9k Assault Rifles"
    weapon.Spawnable = true

    weapon.Primary.RPM = 400
    weapon.Primary.ClipSize = 15

    weapon.Primary.KickUp = 2
    weapon.Primary.KickDown = 1
    weapon.Primary.KickHorizontal = 0.3
    weapon.Primary.Automatic = false
    weapon.Primary.Ammo = "ar2"
    weapon.Primary.Damage = 55
    weapon.Primary.Spread = 0.07
	weapon.Primary.IronAccuracy = 0.01
end )
