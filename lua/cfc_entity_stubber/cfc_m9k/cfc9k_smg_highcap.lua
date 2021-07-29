AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_smgp90" )
    weapon.Category = "CFC9k Submachine Guns"
    weapon.Spawnable = true

    weapon.Primary.RPM = 800
    weapon.Primary.ClipSize = 60

    weapon.Primary.KickUp = 0.6
    weapon.Primary.KickDown = 0.4
    weapon.Primary.KickHorizontal = 0.3
    weapon.Primary.Damage = 17
    weapon.Primary.Spread = 0.05
	weapon.Primary.IronAccuracy = 0.02
end )
