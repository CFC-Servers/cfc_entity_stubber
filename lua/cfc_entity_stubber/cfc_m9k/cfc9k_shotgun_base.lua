AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_ithacam37",
        "m9k_1887winchester"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Shotgun:Base"

        weapon.Primary.RPM = 60
        weapon.Primary.ClipSize = 8
        weapon.Primary.KickUp = 3
        weapon.Primary.KickDown = 2
        weapon.Primary.KickHorizontal = 5
        weapon.Primary.NumShots = 12
        weapon.Primary.Damage = 12
        weapon.Primary.Spread = 0.06
        weapon.Primary.IronAccuracy = 0.03
        weapon.ShellTime = 0.4
    end
end )
