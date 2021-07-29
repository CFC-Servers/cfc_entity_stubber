AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_mossberg590" )
    weapon.Category = "CFC9k Shotguns"
    weapon.Spawnable = true

    weapon.Primary.RPM = 50
    weapon.Primary.ClipSize = 5

    weapon.Primary.KickUp = 5
    weapon.Primary.KickDown = 2
    weapon.Primary.KickHorizontal = 5
    weapon.Primary.NumShots = 12
    weapon.Primary.Damage = 15
    weapon.Primary.Spread = 0.13
	weapon.Primary.IronAccuracy = 0.08
end )
