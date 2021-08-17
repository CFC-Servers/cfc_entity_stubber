AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_m4a1",
        "m9k_acr",
        "m9k_m416",
        "m9k_amd65",
        "m9k_l85"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Rifle:Base"

        weapon.Primary.RPM = 650
        weapon.Primary.ClipSize = 30
        weapon.Primary.KickUp = 0.5
        weapon.Primary.KickDown = 0
        weapon.Primary.KickHorizontal = 0.2
        weapon.Primary.Automatic = true
        weapon.Primary.Ammo = "ar2"
        weapon.Primary.NumShots = 1
        weapon.Primary.Damage = 25
        weapon.Primary.Spread = 0.04
        weapon.Primary.IronAccuracy = 0.009
    end
end )

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_l85"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Rifle:Base"

		weapon.Primary.Sound = "an94.Single"
    end
end )

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_l85"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Rifle:Base"

		weapon.Primary.SpreadZoomed = 0.009
    end
end )