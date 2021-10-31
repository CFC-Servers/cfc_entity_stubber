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

        weapon.Primary.RPM = 950
        weapon.Primary.ClipSize = 30
        weapon.Primary.KickUp = 0.3
        weapon.Primary.KickDown = 0
        weapon.Primary.KickHorizontal = 0.3
        weapon.Primary.Damage = 19
        weapon.Primary.Spread = 0.02
        weapon.Primary.IronAccuracy = 0.01
    end
end )
