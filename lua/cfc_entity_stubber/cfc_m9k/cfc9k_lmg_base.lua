AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_m249lmg",
        "m9k_ares_shrike"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "LMG:Base"

        weapon.Primary.RPM = 700
        weapon.Primary.ClipSize = 100
        weapon.Primary.KickUp = 1.2
        weapon.Primary.KickDown = 0.6
        weapon.Primary.KickHorizontal = 0.6
        weapon.Primary.Damage = 25
        weapon.Primary.Spread = 0.04
        weapon.Primary.IronAccuracy = 0.009
		weapon.Primary.Ammo = "AirboatGun"
    end
end )
