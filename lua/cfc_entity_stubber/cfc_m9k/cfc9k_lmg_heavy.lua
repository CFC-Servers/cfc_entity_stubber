AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_m60" )
    weapon.Category = "CFC9k Machine Guns"
    weapon.Spawnable = true

    weapon.Primary.RPM = 550
    weapon.Primary.ClipSize = 100

    weapon.Primary.KickUp = 1.5
    weapon.Primary.KickDown = 0.3
    weapon.Primary.KickHorizontal = 0.75
    weapon.Primary.Damage = 35
    weapon.Primary.Spread = 0.06
	weapon.Primary.IronAccuracy = 0.025
end )
