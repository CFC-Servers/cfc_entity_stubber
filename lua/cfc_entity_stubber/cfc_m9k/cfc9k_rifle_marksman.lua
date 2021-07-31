AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_m14sp",
        "m9k_winchester73"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Rifle:Marksman"

        weapon.Primary.RPM = 350
        weapon.Primary.ClipSize = 15
        weapon.Primary.KickUp = 2
        weapon.Primary.KickDown = 1
        weapon.Primary.KickHorizontal = 0.3
        weapon.Primary.Automatic = false
        weapon.Primary.Ammo = "ar2"
        weapon.Primary.Damage = 55
        weapon.Primary.Spread = 0.07
        weapon.Primary.IronAccuracy = 0.01
    end
end )
