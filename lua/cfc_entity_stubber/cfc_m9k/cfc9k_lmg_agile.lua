AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_m1918bar",
        "m9k_fg42"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "LMG:Agile"

        weapon.Primary.RPM = 450
        weapon.Primary.ClipSize = 20
        weapon.Primary.KickUp = 1.3
        weapon.Primary.KickDown = 0.5
        weapon.Primary.KickHorizontal = 0.4
        weapon.Primary.Damage = 40
        weapon.Primary.Spread = 0.06
        weapon.Primary.IronAccuracy = 0.008
    end
end )
