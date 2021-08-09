AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_m60",
        "m9k_pkm"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "LMG:Heavy"

        weapon.Primary.RPM = 550
        weapon.Primary.ClipSize = 100
        weapon.Primary.KickUp = 1.5
        weapon.Primary.KickDown = 0.3
        weapon.Primary.KickHorizontal = 0.75
        weapon.Primary.Damage = 35
        weapon.Primary.Spread = 0.06
        weapon.Primary.IronAccuracy = 0.01
		weapon.Primary.Ammo = "AirboatGun"
    end
end )
