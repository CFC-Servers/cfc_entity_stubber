AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_striker12",
        "m9k_usas"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Shotgun:HighCap"

        weapon.Primary.RPM = 325
        weapon.Primary.ClipSize = 12
        weapon.Primary.KickUp = 4
        weapon.Primary.KickDown = 1
        weapon.Primary.KickHorizontal = 2.5
        weapon.Primary.Automatic = true
        weapon.Primary.NumShots = 12
        weapon.Primary.Damage = 4
        weapon.Primary.Spread = 0.15
        weapon.ShellTime = 0.09
    end
end )
