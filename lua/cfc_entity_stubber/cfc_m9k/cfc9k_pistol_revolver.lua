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

        weapon.Primary.RPM = 175
        weapon.Primary.ClipSize = 6
        weapon.Primary.KickUp = 4
        weapon.Primary.KickDown = 0.3
        weapon.Primary.KickHorizontal = 1.4
        weapon.Primary.Damage = 55
        weapon.Primary.Spread = 0.02
        weapon.Primary.NumShots = 1
        weapon.Primary.IronAccuracy = 0.008
    end
end )

cfcEntityStubber.registerStub( function()
    local weapons = {
	    "m9k_remington1858"
    }
	
    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Pistol:Revolver"

        weapon.Primary.RPM = 275
        weapon.Primary.ClipSize = 6
        weapon.Primary.KickUp = 4
        weapon.Primary.KickDown = 0.3
        weapon.Primary.KickHorizontal = 1.5
        weapon.Primary.Automatic = false
        weapon.Primary.Damage = 50
        weapon.Primary.Spread = 0.01
		weapon.Primary.NumShots = 1
        weapon.Primary.IronAccuracy = 0.009
    end
end )

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_scoped_taurus"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Pistol:Revolver"

		weapon.Primary.SpreadZoomed = 0.008
    end
end )