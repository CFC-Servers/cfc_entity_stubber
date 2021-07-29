AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_vector" )
    weapon.Category = "CFC9k Submachine Guns"
    weapon.Spawnable = true

    weapon.Primary.RPM = 900
    weapon.Primary.ClipSize = 30

    weapon.Primary.KickUp = 0.5
    weapon.Primary.KickDown = 0.25
    weapon.Primary.KickHorizontal = 0.5
    weapon.Primary.Damage = 17
    weapon.Primary.Spread = 0.04
	weapon.Primary.IronAccuracy = 0.015
end )
