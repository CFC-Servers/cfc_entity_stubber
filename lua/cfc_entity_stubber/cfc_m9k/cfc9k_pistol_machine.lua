AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_glock",
        "m9k_tec9"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = "An automatic, less accurate version of the base pistol"
        weapon.CFC_Category = "Pistol:Machine"

        weapon.Primary.RPM = 800
        weapon.Primary.ClipSize = 20
        weapon.Primary.KickUp = 1.5
        weapon.Primary.KickDown = 0.3
        weapon.Primary.KickHorizontal = 0.3
        weapon.Primary.Automatic = true
        weapon.Primary.Damage = 20
        weapon.Primary.Spread = 0.05
        weapon.Primary.IronAccuracy = 0.025
    end
end )
