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

        weapon.Primary.RPM = 800
        weapon.Primary.ClipSize = 60
        weapon.Primary.KickUp = 0.55
        weapon.Primary.KickDown = 0.4
        weapon.Primary.KickHorizontal = 0.25
        weapon.Primary.Damage = 17
        weapon.Primary.Spread = 0.03
        weapon.Primary.IronAccuracy = 0.01
    end
end )
