AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_m24",
		"m9k_remington7615p"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Sniper:Base"

        weapon.Primary.RPM = 50
        weapon.Primary.ClipSize = 8

        weapon.Primary.KickUp = 2
        weapon.Primary.KickDown = 4
        weapon.Primary.KickHorizontal = 8
        weapon.Primary.Damage = 70
        weapon.Primary.Spread = 0.09
        weapon.Primary.IronAccuracy = 0.01
    end
end )
