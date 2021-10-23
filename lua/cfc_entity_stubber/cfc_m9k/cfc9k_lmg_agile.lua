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
        weapon.Primary.KickUp = 1
        weapon.Primary.KickDown = 0
        weapon.Primary.KickHorizontal = 0.32
        weapon.Primary.Damage = 40
        weapon.Primary.Spread = 0.05
        weapon.Primary.IronAccuracy = 0.007
    end
end )

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_fg42"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "LMG:Agile"

        weapon.Primary.RPM = 475
        weapon.Primary.ClipSize = 20
        weapon.Primary.KickUp = 1
        weapon.Primary.KickDown = 0
        weapon.Primary.KickHorizontal = 0.32
        weapon.Primary.Damage = 40
        weapon.Primary.Spread = 0.053
        weapon.Primary.IronAccuracy = 0.0073
    end
end )
