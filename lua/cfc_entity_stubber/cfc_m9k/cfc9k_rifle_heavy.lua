AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_ak47" )
    weapon.Category = "CFC9k Assault Rifles"
    weapon.Spawnable = true

    weapon.Primary.RPM = 550
    weapon.Primary.ClipSize = 30

    weapon.Primary.KickUp = 1 
    weapon.Primary.KickDown = 0.5
    weapon.Primary.KickHorizontal = 0.4
    weapon.Primary.Damage = 33
    weapon.Primary.Spread = 0.06
	weapon.Primary.IronAccuracy = 0.025
end )
