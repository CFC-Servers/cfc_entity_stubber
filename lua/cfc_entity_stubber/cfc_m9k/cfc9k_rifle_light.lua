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

        weapon.Primary.RPM = 700
        weapon.Primary.ClipSize = 30
        weapon.Primary.KickUp = 0.6
        weapon.Primary.KickDown = 0.3
        weapon.Primary.KickHorizontal = 0.3
        weapon.Primary.Damage = 20
        weapon.Primary.Spread = 0.04
        weapon.Primary.IronAccuracy = 0.01
    end

	local weapon
	
	cfcEntityStubber.registerStub( function()
		weapons = {
		"m9k_f2000",
		"m9k_auga3",
		"m9k_honeybadger"
	}
		weapon.Primary.SpreadZoomed = 0.01
	
end )