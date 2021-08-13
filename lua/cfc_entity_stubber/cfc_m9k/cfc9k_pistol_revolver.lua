AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_ragingbull",
        "m9k_coltpython",
        "m9k_scoped_taurus",
        "m9k_model3russian",
        "m9k_model627",
		"m9k_deagle",
		"m9k_m29satan"
    }

    for _, weaponClass in pairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Pistol:Revolver"

        weapon.Primary.RPM = 100
        weapon.Primary.ClipSize = 6
        weapon.Primary.KickUp = 4
        weapon.Primary.KickDown = 0.3
        weapon.Primary.KickHorizontal = 1.5
        weapon.Primary.Damage = 55
        weapon.Primary.Spread = 0.03
        weapon.Primary.NumShots = 1
        weapon.Primary.IronAccuracy = 0.009
    end
	
	local weapon

	weapon = cfcEntityStubber.getWeapon( "m9k_remington1858" )
	weapon.Primary.RPM = 275
	weapon.Primary.Damage = 50
	weapon.Primary.Spread = 0.02
	weapon.Primary.IronAccuracy = 0.015
	
	weapon = cfcEntityStubber.getWeapon( "m9k_scoped_taurus" )
	weapon.Primary.SpreadZoomed = .0015
	
end )