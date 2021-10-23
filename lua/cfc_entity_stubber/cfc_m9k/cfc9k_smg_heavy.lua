AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_ump45"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "SMG:Heavy"

        weapon.Primary.RPM = 700
        weapon.Primary.ClipSize = 30
        weapon.Primary.KickUp = 0.48
        weapon.Primary.KickDown = 0
        weapon.Primary.KickHorizontal = 0.22
        weapon.Primary.Damage = 24
        weapon.Primary.Spread = 0.025
        weapon.Primary.IronAccuracy = 0.015
    end
end )

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_usc"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "SMG:Heavy"

        weapon.Primary.RPM = 750
        weapon.Primary.ClipSize = 30
        weapon.Primary.KickUp = 0.48
        weapon.Primary.KickDown = 0
        weapon.Primary.KickHorizontal = 0.22
        weapon.Primary.Damage = 24
        weapon.Primary.Spread = 0.027
        weapon.Primary.IronAccuracy = 0.017
    end
end )

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_mp40"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "SMG:Heavy"

        weapon.Primary.RPM = 700
        weapon.Primary.ClipSize = 30
        weapon.Primary.KickUp = 0.48
        weapon.Primary.KickDown = 0
        weapon.Primary.KickHorizontal = 0.22
        weapon.Primary.Damage = 24
        weapon.Primary.Spread = 0.028
        weapon.Primary.IronAccuracy = 0.012
    end
end )

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_uzi"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "SMG:Heavy"

        weapon.Primary.RPM = 700
        weapon.Primary.ClipSize = 30
        weapon.Primary.KickUp = 0.5
        weapon.Primary.KickDown = 0
        weapon.Primary.KickHorizontal = 0.2
        weapon.Primary.Damage = 24
        weapon.Primary.Spread = 0.025
        weapon.Primary.IronAccuracy = 0.015
    end
end )

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_sten"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "SMG:Heavy"

        weapon.Primary.RPM = 675
        weapon.Primary.ClipSize = 30
        weapon.Primary.KickUp = 0.48
        weapon.Primary.KickDown = 0
        weapon.Primary.KickHorizontal = 0.22
        weapon.Primary.Damage = 24
        weapon.Primary.Spread = 0.023
        weapon.Primary.IronAccuracy = 0.013
    end
end )
