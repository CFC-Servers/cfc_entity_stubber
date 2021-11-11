AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_mossberg590"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Shotgun:Heavy"

        weapon.Primary.RPM = 50
        weapon.Primary.ClipSize = 5
        weapon.Primary.KickUp = 5
        weapon.Primary.KickDown = 2
        weapon.Primary.KickHorizontal = 5
        weapon.Primary.NumShots = 12
        weapon.Primary.Damage = 15
        weapon.Primary.Spread = 0.07
        weapon.Primary.IronAccuracy = 0.03
		weapon.Primary.Ammo = "AirboatGun"
		weapon.Primary.DefaultClip = 1000
    end
end )

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_1897winchester"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Shotgun:Heavy"

        weapon.Primary.RPM = 55
        weapon.Primary.ClipSize = 5
        weapon.Primary.KickUp = 5
        weapon.Primary.KickDown = 2
        weapon.Primary.KickHorizontal = 5
        weapon.Primary.NumShots = 12
        weapon.Primary.Damage = 15
        weapon.Primary.Spread = 0.073
        weapon.Primary.IronAccuracy = 0.033
		weapon.Primary.Ammo = "AirboatGun"
		weapon.Primary.DefaultClip = 1000
    end
end )
