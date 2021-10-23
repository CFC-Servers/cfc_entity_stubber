AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_m4a1"
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
        weapon.Primary.IronAccuracy = 0.006
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

        weapon.Primary.RPM = 650
        weapon.Primary.ClipSize = 30
        weapon.Primary.KickUp = 0.5
        weapon.Primary.KickDown = 0
        weapon.Primary.KickHorizontal = 0.2
        weapon.Primary.Automatic = true
        weapon.Primary.Ammo = "ar2"
        weapon.Primary.NumShots = 1
        weapon.Primary.Damage = 25
        weapon.Primary.Spread = 0.043
		weapon.Primary.Sound = "an94.Single"
		weapon.Primary.SpreadZoomed = 0.0057
    end
end )

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_m416"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Rifle:Base"

        weapon.Primary.RPM = 625
        weapon.Primary.ClipSize = 30
        weapon.Primary.KickUp = 0.47
        weapon.Primary.KickDown = 0
        weapon.Primary.KickHorizontal = 0.18
        weapon.Primary.Automatic = true
        weapon.Primary.Ammo = "ar2"
        weapon.Primary.NumShots = 1
        weapon.Primary.Damage = 25
        weapon.Primary.Spread = 0.04
        weapon.Primary.IronAccuracy = 0.006
    end
end )

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_acr"

    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Rifle:Base"

        weapon.Primary.RPM = 675
        weapon.Primary.ClipSize = 30
        weapon.Primary.KickUp = 0.5
        weapon.Primary.KickDown = 0
        weapon.Primary.KickHorizontal = 0.2
        weapon.Primary.Automatic = true
        weapon.Primary.Ammo = "ar2"
        weapon.Primary.NumShots = 1
        weapon.Primary.Damage = 25
        weapon.Primary.Spread = 0.045
        weapon.Primary.IronAccuracy = 0.0062
    end
end )

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_amd65"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Rifle:Base"

        weapon.Primary.RPM = 640
        weapon.Primary.ClipSize = 30
        weapon.Primary.KickUp = 0.45
        weapon.Primary.KickDown = 0
        weapon.Primary.KickHorizontal = 0.2
        weapon.Primary.Automatic = true
        weapon.Primary.Ammo = "ar2"
        weapon.Primary.NumShots = 1
        weapon.Primary.Damage = 25
        weapon.Primary.Spread = 0.04
        weapon.Primary.IronAccuracy = 0.006
    end
end )