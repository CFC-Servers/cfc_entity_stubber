AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_m249lmg"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "LMG:Base"

        weapon.Primary.RPM = 700
        weapon.Primary.ClipSize = 100
        weapon.Primary.KickUp = 0.8
        weapon.Primary.KickDown = 0
        weapon.Primary.KickHorizontal = 0.5
        weapon.Primary.Damage = 25
        weapon.Primary.Spread = 0.04
        weapon.Primary.IronAccuracy = 0.009
		weapon.Primary.Ammo = "AirboatGun"
    end
end )

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_ares_shrike"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "LMG:Base"

        weapon.Primary.RPM = 700
        weapon.Primary.ClipSize = 100
        weapon.Primary.KickUp = 0.7
        weapon.Primary.KickDown = 0
        weapon.Primary.KickHorizontal = 0.45
        weapon.Primary.Damage = 25
        weapon.Primary.Spread = 0.043
        weapon.Primary.IronAccuracy = 0.0093
		weapon.Primary.Ammo = "AirboatGun"
    end
end )
