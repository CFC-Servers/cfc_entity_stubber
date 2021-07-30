AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_minigun"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "LMG:Suppression"

        weapon.Primary.RPM = 700
        weapon.Primary.ClipSize = 150
        weapon.Primary.KickUp = 1
        weapon.Primary.KickDown = 0.7
        weapon.Primary.KickHorizontal = 1
        weapon.Primary.NumShots = 2
        weapon.Primary.Damage = 15
        weapon.Primary.Spread = 0.04
    end
end )
