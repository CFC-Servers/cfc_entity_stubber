AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_sig_p229r",
        "m9k_hk45"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Pistol:Light"

        weapon.Primary.RPM = 550
        weapon.Primary.ClipSize = 12
        weapon.Primary.KickUp = 0.09
        weapon.Primary.KickDown = 0.5
        weapon.Primary.KickHorizontal = 0.2
        weapon.Primary.Damage = 20
        weapon.Primary.Spread = 0.02
        weapon.Primary.IronAccuracy = 0.01
    end
end )
