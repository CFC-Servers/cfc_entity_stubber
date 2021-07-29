AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_m3" )
    weapon.Category = "CFC9k Shotguns"
    weapon.Spawnable = true

    weapon.Primary.RPM = 80
    weapon.Primary.ClipSize = 8

    weapon.Primary.KickUp = 3
    weapon.Primary.KickDown = 2
    weapon.Primary.KickHorizontal = 2
    weapon.Primary.NumShots = 9
    weapon.Primary.Damage = 8
    weapon.Primary.Spread = 0.1
	weapon.Primary.IronAccuracy = 0.05
end )
