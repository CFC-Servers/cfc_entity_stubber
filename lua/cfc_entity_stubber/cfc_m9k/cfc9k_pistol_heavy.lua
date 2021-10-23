AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_colt1911"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Pistol:Heavy"

        weapon.Primary.RPM = 400
        weapon.Primary.ClipSize = 7
        weapon.Primary.KickUp = 1
        weapon.Primary.KickDown = 0
        weapon.Primary.KickHorizontal = 0.35
        weapon.Primary.Damage = 34
        weapon.Primary.Spread = 0.027
        weapon.Primary.IronAccuracy = 0.0065
    end
end )

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_usp"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Pistol:Heavy"

        weapon.Primary.RPM = 400
        weapon.Primary.ClipSize = 9
        weapon.Primary.KickUp = 1
        weapon.Primary.KickDown = 0
        weapon.Primary.KickHorizontal = 0.35
        weapon.Primary.Damage = 34
        weapon.Primary.Spread = 0.03
        weapon.Primary.IronAccuracy = 0.009
    end
end )