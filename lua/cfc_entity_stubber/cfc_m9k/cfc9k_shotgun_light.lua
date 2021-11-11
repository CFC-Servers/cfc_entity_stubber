AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_m3",
        "m9k_remington870"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Shotgun:Light"

        weapon.Primary.RPM = 80
        weapon.Primary.ClipSize = 8
        weapon.Primary.KickUp = 3
        weapon.Primary.KickDown = 2
        weapon.Primary.KickHorizontal = 2
        weapon.Primary.NumShots = 12
        weapon.Primary.Damage = 9
        weapon.Primary.Spread = 0.05
        weapon.Primary.IronAccuracy = 0.016
    end
end )
