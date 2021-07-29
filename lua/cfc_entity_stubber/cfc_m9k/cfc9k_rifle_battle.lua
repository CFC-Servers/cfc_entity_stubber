AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_l85" )
    weapon.Category = "CFC9k Assault Rifles"
    weapon.Spawnable = true

    weapon.Primary.RPM = 450
    weapon.Primary.ClipSize = 20

    weapon.Primary.KickUp = 1.3
    weapon.Primary.KickDown = 0.4
    weapon.Primary.KickHorizontal = 0.3
    weapon.Primary.Damage = 45
    weapon.Primary.Spread = 0.065
	weapon.Primary.IronAccuracy = 0.015
end )
