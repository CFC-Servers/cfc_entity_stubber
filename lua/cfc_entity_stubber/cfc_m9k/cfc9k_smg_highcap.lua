AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_bizonp19",
        "m9k_smgp90",
        "m9k_thompson"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "SMG:HighCap"

        weapon.Primary.RPM = 850
        weapon.Primary.ClipSize = 60
        weapon.Primary.KickUp = 0.35
        weapon.Primary.KickDown = 0
        weapon.Primary.KickHorizontal = 0.17
        weapon.Primary.Damage = 19
        weapon.Primary.Spread = 0.03
        weapon.Primary.IronAccuracy = 0.02
    end
end )
