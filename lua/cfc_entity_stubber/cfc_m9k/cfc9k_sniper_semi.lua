AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_dragunov" )
    weapon.Category = "CFC9k Sniper Rifles"
    weapon.Spawnable = true

    weapon.Primary.RPM = 400
    weapon.Primary.ClipSize = 15

    weapon.Primary.KickUp = 2
    weapon.Primary.KickDown = 1
    weapon.Primary.KickHorizontal = 1
    weapon.Primary.Damage = 55
    weapon.Primary.Spread = 0.15
	weapon.Primary.IronAccuracy = 0.01
end )
