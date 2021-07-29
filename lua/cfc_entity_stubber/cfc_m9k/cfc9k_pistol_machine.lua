AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_glock" )
    weapon.Category = "CFC9k Pistols"
    weapon.Purpose = "An automatic, less accurate version of the base pistol"
    weapon.Spawnable = true

    weapon.Primary.RPM = 800
    weapon.Primary.ClipSize = 20

    weapon.Primary.KickUp = 1.5
    weapon.Primary.KickDown = 0.3
    weapon.Primary.KickHorizontal = 0.3
    weapon.Primary.Automatic = true
    weapon.Primary.Damage = 20
    weapon.Primary.Spread = 0.05
	weapon.Primary.IronAccuracy = 0.025
end )
