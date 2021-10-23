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

        weapon.Primary.RPM = 550
        weapon.Primary.ClipSize = 30
        weapon.Primary.KickUp = 0.7
        weapon.Primary.KickDown = 0
        weapon.Primary.KickHorizontal = 0.25
        weapon.Primary.Damage = 33
        weapon.Primary.Spread = 0.05
        weapon.Primary.IronAccuracy = 0.005
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

        weapon.Primary.RPM = 275
        weapon.Primary.ClipSize = 15
        weapon.Primary.KickUp = 0.65
        weapon.Primary.KickDown = 0
        weapon.Primary.KickHorizontal = 0.23
        weapon.Primary.Damage = 33
        weapon.Primary.Spread = 0.05
        weapon.Primary.IronAccuracy = 0.005
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

        weapon.Primary.RPM = 575
        weapon.Primary.ClipSize = 30
        weapon.Primary.KickUp = 0.7
        weapon.Primary.KickDown = 0
        weapon.Primary.KickHorizontal = 0.25
        weapon.Primary.Damage = 33
        weapon.Primary.Spread = 0.053
        weapon.Primary.IronAccuracy = 0.0053
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

        weapon.Primary.RPM = 525
        weapon.Primary.ClipSize = 30
        weapon.Primary.KickUp = 0.68
        weapon.Primary.KickDown = 0
        weapon.Primary.KickHorizontal = 0.23
        weapon.Primary.Damage = 33
        weapon.Primary.Spread = 0.05
        weapon.Primary.IronAccuracy = 0.005
    end
end )