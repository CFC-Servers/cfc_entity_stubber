AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_m92beretta"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = "A basic, all-around pistol"
        weapon.CFC_Category = "Pistol:Base"

        weapon.Primary.RPM = 525
        weapon.Primary.ClipSize = 12
        weapon.Primary.KickUp = 0.98
        weapon.Primary.KickDown = 0
        weapon.Primary.KickHorizontal = 0.2
        weapon.Primary.Automatic = false
        weapon.Primary.Ammo = "pistol"
        weapon.Primary.NumShots = 1
        weapon.Primary.Damage = 25
        weapon.Primary.Spread = 0.18
        weapon.Primary.IronAccuracy = 0.012
    end
end )

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_luger"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = "A basic, all-around pistol"
        weapon.CFC_Category = "Pistol:Base"

        weapon.Primary.RPM = 500
        weapon.Primary.ClipSize = 12
        weapon.Primary.KickUp = 0.98
        weapon.Primary.KickDown = 0
        weapon.Primary.KickHorizontal = 0.2
        weapon.Primary.Automatic = false
        weapon.Primary.Ammo = "pistol"
        weapon.Primary.NumShots = 1
        weapon.Primary.Damage = 25
        weapon.Primary.Spread = 0.02
        weapon.Primary.IronAccuracy = 0.01
    end
end )