AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_scar",
        "m9k_m16a4_acog",
        "m9k_g3a3",
        "m9k_fal"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Rifle:Battle"

        weapon.Primary.RPM = 450
        weapon.Primary.ClipSize = 20
        weapon.Primary.KickUp = 1.3
        weapon.Primary.KickDown = 0.4
        weapon.Primary.KickHorizontal = 0.3
        weapon.Primary.Damage = 45
        weapon.Primary.Spread = 0.065
        weapon.Primary.IronAccuracy = 0.015
    end
end )
