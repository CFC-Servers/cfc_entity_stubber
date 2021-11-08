AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_m24"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Sniper:Base"

        weapon.Primary.RPM = 50
        weapon.Primary.ClipSize = 8
        weapon.Primary.KickUp = 2
        weapon.Primary.KickDown = 4
        weapon.Primary.KickHorizontal = 8
        weapon.Primary.Damage = 75
        weapon.Primary.SpreadBefore = 0.02
		weapon.Primary.SpreadZoomed = 0.0001
		weapon.Primary.DefaultClip = 1000
    end
end )

cfcEntityStubber.registerStub( function()
    local weapons = {
		"m9k_remington7615p"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Sniper:Base"

        weapon.Primary.RPM = 75
        weapon.Primary.ClipSize = 8
        weapon.Primary.KickUp = 2
        weapon.Primary.KickDown = 4
        weapon.Primary.KickHorizontal = 8
        weapon.Primary.Damage = 25
        weapon.Primary.SpreadBefore = 0.035
		weapon.Primary.SpreadZoomed = 0.0005
		weapon.Primary.DefaultClip = 1000
    end
end )

cfcEntityStubber.registerStub( function()
    local weapons = {
		"m9k_contender"
	}
	
    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Sniper:Base"

        weapon.Primary.RPM = 50
        weapon.Primary.ClipSize = 1
        weapon.Primary.KickUp = 4
        weapon.Primary.KickDown = 6
        weapon.Primary.KickHorizontal = 8
        weapon.Primary.Automatic = false
        weapon.Primary.Damage = 75
        weapon.Primary.SpreadBefore = 0.013
        weapon.Primary.SpreadZoomed = 0.0001
		weapon.Primary.DefaultClip = 1000
    end
end )