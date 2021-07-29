AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_m249lmg" )
    weapon.Category = "CFC9k Machine Guns"
    weapon.Spawnable = true

    weapon.Primary.RPM = 700
    weapon.Primary.ClipSize = 100

    weapon.Primary.KickUp = 1.3
    weapon.Primary.KickDown = 0.7
    weapon.Primary.KickHorizontal = 0.75
    weapon.Primary.Damage = 25
    weapon.Primary.Spread = 0.05
	weapon.Primary.IronAccuracy = 0.02
end )
