AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_minigun"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "LMG:Suppression"
		
		weapon.Primary.Sound = "BlackVulcan.Single"

        weapon.Primary.RPM = 700
        weapon.Primary.ClipSize = 150
        weapon.Primary.KickUp = 0.9
        weapon.Primary.KickDown = 0
        weapon.Primary.KickHorizontal = 0.4
        weapon.Primary.NumShots = 2
        weapon.Primary.Damage = 20
        weapon.Primary.Spread = 0.038
    end
end )
