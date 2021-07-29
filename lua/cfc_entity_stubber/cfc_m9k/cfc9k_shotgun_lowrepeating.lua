AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_spas12" )
    weapon.Category = "CFC9k Shotguns"
    weapon.Spawnable = true

    weapon.Primary.RPM = 250
    weapon.Primary.ClipSize = 8

    weapon.Primary.KickUp = 4
    weapon.Primary.KickDown = 1.5
    weapon.Primary.KickHorizontal = 2.5
    weapon.Primary.NumShots = 12
    weapon.Primary.Damage = 8
    weapon.Primary.Spread = 0.13
	weapon.Primary.IronAccuracy = 0.08
end )
