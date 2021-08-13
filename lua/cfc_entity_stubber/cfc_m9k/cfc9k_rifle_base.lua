AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_m4a1",
        "m9k_acr",
        "m9k_m416",
        "m9k_amd65",
        "m9k_l85"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Rifle:Base"

        weapon.Primary.RPM = 650
        weapon.Primary.ClipSize = 30
        weapon.Primary.KickUp = 0.8
        weapon.Primary.KickDown = 0.5
        weapon.Primary.KickHorizontal = 0.3
        weapon.Primary.Automatic = true
        weapon.Primary.Ammo = "ar2"
        weapon.Primary.NumShots = 1
        weapon.Primary.Damage = 25
        weapon.Primary.Spread = 0.05
        weapon.Primary.IronAccuracy = 0.01
    end

	local weapon
	
	weapon = cfcEntityStubber.getWeapon( "m9k_l85" )
	weapon.Primary.Sound = "an94.Single"
	weapon.Primary.SpreadZoomed = 0.01

end )