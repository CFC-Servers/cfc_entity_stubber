AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_vector",
        "m9k_mp9"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "SMG:Light"

        weapon.Primary.RPM = 900
        weapon.Primary.ClipSize = 30
        weapon.Primary.KickUp = 0.5
        weapon.Primary.KickDown = 0.25
        weapon.Primary.KickHorizontal = 0.5
        weapon.Primary.Damage = 17
        weapon.Primary.Spread = 0.03
        weapon.Primary.IronAccuracy = 0.015
    end
end )
