AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_spas12",
        "m9k_browningauto5",
        "m9k_jackhammer"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Shotgun:LowCap"

        weapon.Primary.RPM = 250
        weapon.Primary.ClipSize = 8
        weapon.Primary.KickUp = 4
        weapon.Primary.KickDown = 1.5
        weapon.Primary.KickHorizontal = 2.5
        weapon.Primary.NumShots = 12
        weapon.Primary.Damage = 8
        weapon.Primary.Spread = 0.1
        weapon.Primary.IronAccuracy = 0.05
    end
end )
