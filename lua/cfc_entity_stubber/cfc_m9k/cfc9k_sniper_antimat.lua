AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_barret_m82"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = "Strong against props at medium range, but too inacurate to effectivly hit infantry."
        weapon.CFC_Category = "Sniper:AntiMat"
		weapon.PrintName = "Anti-Materiel Rifle"

        weapon.Primary.RPM = 100
        weapon.Primary.ClipSize = 5
        weapon.Primary.KickUp = 2.5
        weapon.Primary.KickDown = 1
        weapon.Primary.KickHorizontal = 3
        weapon.Primary.Damage = 150
        weapon.Primary.SpreadBefore = 0.07
		weapon.Primary.SpreadZoomed = 0.003
		weapon.Primary.DefaultClip = 1000
		weapon.ACF_DamageMult = 10
    end
end )