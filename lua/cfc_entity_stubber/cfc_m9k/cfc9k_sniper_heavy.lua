AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_aw50",
        "m9k_m98b",
        "m9k_intervention"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Sniper:Heavy"

        weapon.Primary.RPM = 40
        weapon.Primary.ClipSize = 5
        weapon.Primary.KickUp = 4
        weapon.Primary.KickDown = 6
        weapon.Primary.KickHorizontal = 8
        weapon.Primary.Damage = 105
        weapon.Primary.Spread = 0.15
        weapon.Primary.IronAccuracy = 0.018
    end
end )

cfcEntityStubber.registerStub( function()
    local weapons = "contender"
	
    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Sniper:Heavy"

        weapon.Primary.RPM = 50
        weapon.Primary.ClipSize = 1
        weapon.Primary.KickUp = 4
        weapon.Primary.KickDown = 6
        weapon.Primary.KickHorizontal = 8
        weapon.Primary.Automatic = false
        weapon.Primary.Damage = 70
        weapon.Primary.Spread = 0.08
        weapon.Primary.IronAccuracy = 0.001
    end
end )