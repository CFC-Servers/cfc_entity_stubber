AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_mp5",
        "m9k_mp7",
        "m9k_mp5sd",
        "m9k_magpulpdr"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "SMG:Base"

        weapon.Primary.RPM = 800
        weapon.Primary.ClipSize = 30
        weapon.Primary.KickUp = 0.35
        weapon.Primary.KickDown = 0
        weapon.Primary.KickHorizontal = 0.17
        weapon.Primary.Damage = 20
        weapon.Primary.Spread = 0.025
        weapon.Primary.IronAccuracy = 0.02
    end
end )
