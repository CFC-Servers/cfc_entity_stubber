AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_m14sp"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Rifle:Marksman"

        weapon.Primary.RPM = 300
        weapon.Primary.ClipSize = 15
        weapon.Primary.KickUp = 2
        weapon.Primary.KickDown = 1
        weapon.Primary.KickHorizontal = 0.2
        weapon.Primary.Automatic = false
        weapon.Primary.Ammo = "AirboatGun"
        weapon.Primary.Damage = 55
        weapon.Primary.Spread = 0.06
        weapon.Primary.IronAccuracy = 0.001
    end
end )

cfcEntityStubber.registerStub( function()
    local weapons = {
		"m9k_sl8"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Rifle:Marksman"

        weapon.Primary.RPM = 300
        weapon.Primary.ClipSize = 15
        weapon.Primary.KickUp = 2
        weapon.Primary.KickDown = 1
        weapon.Primary.KickHorizontal = 0.2
        weapon.Primary.Automatic = true
        weapon.Primary.Ammo = "AirboatGun"
        weapon.Primary.Damage = 55
        weapon.Primary.Spread = 0.065
        weapon.Primary.IronAccuracy = 0.001
    end
end )

cfcEntityStubber.registerStub( function()
    local weapons = {
		"m9k_winchester73"
	}
	
    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Rifle:Marksman"

        weapon.Primary.RPM = 70
        weapon.Primary.ClipSize = 10
        weapon.Primary.KickUp = 2
        weapon.Primary.KickDown = 1
        weapon.Primary.KickHorizontal = 0.3
        weapon.Primary.Automatic = false
        weapon.Primary.Ammo = "AirboatGun"
        weapon.Primary.Damage = 70
        weapon.Primary.Spread = 0.06
        weapon.Primary.IronAccuracy = 0.001
    end
end )