AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_ak47",
        "m9k_ak74"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Rifle:Heavy"

        weapon.Primary.RPM = 600
        weapon.Primary.ClipSize = 30
        weapon.Primary.KickUp = 1.3
        weapon.Primary.KickDown = 0
        weapon.Primary.KickHorizontal = 0.25
        weapon.Primary.Damage = 35
        weapon.Primary.Spread = 0.05
        weapon.Primary.IronAccuracy = 0.0047
    end
end )

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_an94"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Rifle:Heavy"

        weapon.Primary.RPM = 400
        weapon.Primary.ClipSize = 15
        weapon.Primary.KickUp = 1.7
        weapon.Primary.KickDown = 0
        weapon.Primary.KickHorizontal = 0.23
        weapon.Primary.Damage = 28
        weapon.Primary.Spread = 0.05
        weapon.Primary.IronAccuracy = 0.0047
		weapon.Primary.NumShots = 2
		weapon.Primary.Automatic = false
    end
end )

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_vikhr"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Rifle:Heavy"

        weapon.Primary.RPM = 625
        weapon.Primary.ClipSize = 30
        weapon.Primary.KickUp = 1.3
        weapon.Primary.KickDown = 0
        weapon.Primary.KickHorizontal = 0.25
        weapon.Primary.Damage = 35
        weapon.Primary.Spread = 0.053
        weapon.Primary.IronAccuracy = 0.005
    end
end )

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_g36"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Rifle:Heavy"

        weapon.Primary.RPM = 575
        weapon.Primary.ClipSize = 30
        weapon.Primary.KickUp = 1.15
        weapon.Primary.KickDown = 0
        weapon.Primary.KickHorizontal = 0.23
        weapon.Primary.Damage = 35
        weapon.Primary.Spread = 0.05
        weapon.Primary.IronAccuracy = 0.0047
    end
end )