AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_g3a3"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Rifle:Battle"

        weapon.Primary.RPM = 450
        weapon.Primary.ClipSize = 20
        weapon.Primary.KickUp = 1.1
        weapon.Primary.KickDown = 0
        weapon.Primary.KickHorizontal = 0.35
        weapon.Primary.Damage = 45
        weapon.Primary.Spread = 0.05
        weapon.Primary.IronAccuracy = 0.003
    end
end )

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_m16a4_acog"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Rifle:Battle"

        weapon.Primary.RPM = 450
        weapon.Primary.ClipSize = 20
        weapon.Primary.KickUp = 1.1
        weapon.Primary.KickDown = 0
        weapon.Primary.KickHorizontal = 0.35
        weapon.Primary.Damage = 45
        weapon.Primary.Spread = 0.05
		weapon.Primary.SpreadZoomed = 0.0035
    end
end )

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_fal"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Rifle:Battle"

        weapon.Primary.RPM = 450
        weapon.Primary.ClipSize = 20
        weapon.Primary.KickUp = 1
        weapon.Primary.KickDown = 0
        weapon.Primary.KickHorizontal = 0.3
        weapon.Primary.Damage = 45
        weapon.Primary.Spread = 0.05
        weapon.Primary.IronAccuracy = 0.002
		weapon.Primary.Automatic = false
    end
end )

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_scar"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Rifle:Battle"

        weapon.Primary.RPM = 485
        weapon.Primary.ClipSize = 20
        weapon.Primary.KickUp = 1.12
        weapon.Primary.KickDown = 0
        weapon.Primary.KickHorizontal = 0.37
        weapon.Primary.Damage = 45
        weapon.Primary.Spread = 0.05
        weapon.Primary.IronAccuracy = 0.003
    end
end )