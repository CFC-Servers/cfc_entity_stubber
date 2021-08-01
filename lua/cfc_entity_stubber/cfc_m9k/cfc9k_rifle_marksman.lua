AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_m14sp",
        "m9k_winchester73",
		"m9k_sl8",
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Rifle:Marksman"

        weapon.Primary.RPM = 300
        weapon.Primary.ClipSize = 15
        weapon.Primary.KickUp = 2
        weapon.Primary.KickDown = 1
        weapon.Primary.KickHorizontal = 0.3
        weapon.Primary.Automatic = false
        weapon.Primary.Ammo = "ar2"
        weapon.Primary.Damage = 55
        weapon.Primary.Spread = 0.08
        weapon.Primary.IronAccuracy = 0.001
    end
end )