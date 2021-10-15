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
        weapon.Primary.KickUp = 1.8
        weapon.Primary.KickDown = 1
        weapon.Primary.KickHorizontal = 0.08
        weapon.Primary.Damage = 55
        weapon.Primary.SpreadBefore = 0.06
		weapon.Primary.SpreadZoomed = 0.001
		weapon.Primary.Automatic = false
		weapon.Primary.DefaultClip = 1000
    end
end )
