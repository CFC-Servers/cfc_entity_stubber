AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_tar21",
        "m9k_honeybadger",
        "m9k_val",
        "m9k_f2000",
        "m9k_famas",
        "m9k_kac_pdw",
        "m9k_auga3"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Rifle:Light"

        weapon.Primary.RPM = 750
        weapon.Primary.ClipSize = 30
        weapon.Primary.KickUp = 0.65
        weapon.Primary.KickDown = 0
        weapon.Primary.KickHorizontal = 0.215
        weapon.Primary.Damage = 24
        weapon.Primary.Spread = 0.035
        weapon.Primary.IronAccuracy = 0.005
    end
end )

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_f2000",
		"m9k_honeybadger",
		"m9k_auga3"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Rifle:Light"

        weapon.Primary.SpreadBefore = 0.04
		weapon.Primary.SpreadZoomed = 0.005
    end
end )