AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_aw50",
        "m9k_m98b",
        "m9k_intervention"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Sniper:Heavy"

        weapon.Primary.RPM = 40
        weapon.Primary.ClipSize = 5
        weapon.Primary.KickUp = 4
        weapon.Primary.KickDown = 6
        weapon.Primary.KickHorizontal = 8
        weapon.Primary.Damage = 105
        weapon.Primary.Spread = 0.1
		weapon.Primary.SpreadZoomed = 0.003
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
        weapon.CFC_Category = "Sniper:Heavy"

        weapon.Primary.RPM = 50
        weapon.Primary.ClipSize = 1
        weapon.Primary.KickUp = 4
        weapon.Primary.KickDown = 6
        weapon.Primary.KickHorizontal = 8
        weapon.Primary.Automatic = false
        weapon.Primary.Damage = 70
        weapon.Primary.Spread = 0.06
        weapon.Primary.SpreadZoomed = 0.001
		weapon.Primary.DefaultClip = 1000
    end
end )