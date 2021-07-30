AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_barret_m82"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Sniper:AntiMat"

        weapon.Primary.RPM = 100
        weapon.Primary.ClipSize = 5
        weapon.Primary.KickUp = 3
        weapon.Primary.KickDown = 1
        weapon.Primary.KickHorizontal = 5
        weapon.Primary.Damage = 5000
        weapon.Primary.Spread = 0.17
        weapon.Primary.IronAccuracy = 0.02
    end
end )
