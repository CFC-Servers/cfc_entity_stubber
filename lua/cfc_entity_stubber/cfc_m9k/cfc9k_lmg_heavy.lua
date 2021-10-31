AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_m60"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "LMG:Heavy"

        weapon.Primary.RPM = 550
        weapon.Primary.ClipSize = 100
        weapon.Primary.KickUp = 1.3
        weapon.Primary.KickDown = 0
        weapon.Primary.KickHorizontal = 0.55
        weapon.Primary.Damage = 40
        weapon.Primary.Spread = 0.065
        weapon.Primary.IronAccuracy = 0.005
		weapon.Primary.Ammo = "AirboatGun"
		weapon.ACF_DamageMult = 1.5
    end
end )

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_pkm"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "LMG:Heavy"

        weapon.Primary.RPM = 550
        weapon.Primary.ClipSize = 100
        weapon.Primary.KickUp = 1.3
        weapon.Primary.KickDown = 0
        weapon.Primary.KickHorizontal = 0.55
        weapon.Primary.Damage = 40
        weapon.Primary.Spread = 0.065
        weapon.Primary.IronAccuracy = 0.005
		weapon.Primary.Ammo = "AirboatGun"
		weapon.ACF_DamageMult = 1.5
    end
end )