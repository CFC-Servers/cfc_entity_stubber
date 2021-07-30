AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_dragunov",
        "m9k_psg1",
        "m9k_svu",
        "m9k_svt40"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Sniper:Semi"

        weapon.Primary.RPM = 400
        weapon.Primary.ClipSize = 15
        weapon.Primary.KickUp = 2
        weapon.Primary.KickDown = 1
        weapon.Primary.KickHorizontal = 1
        weapon.Primary.Damage = 55
        weapon.Primary.Spread = 0.15
        weapon.Primary.IronAccuracy = 0.01
    end
end )
