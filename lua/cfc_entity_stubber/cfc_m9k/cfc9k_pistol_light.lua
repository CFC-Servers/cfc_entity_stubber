AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_sig_p229r" )
    weapon.Category = "CFC9k Pistols"
    weapon.Spawnable = true

    weapon.Primary.RPM = 550
    weapon.Primary.ClipSize = 12

    weapon.Primary.KickUp = 1
    weapon.Primary.KickDown = 0.5
    weapon.Primary.KickHorizontal = 0.2
    weapon.Primary.Damage = 20
    weapon.Primary.Spread = 0.03
	weapon.Primary.IronAccuracy = 0.02
end )
