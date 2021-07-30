AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_ak47",
        "m9k_ak74",
        "m9k_an94",
        "m9k_vikhr",
        "m9k_g36"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Rifle:Heavy"

        weapon.Primary.RPM = 550
        weapon.Primary.ClipSize = 30
        weapon.Primary.KickUp = 1
        weapon.Primary.KickDown = 0.5
        weapon.Primary.KickHorizontal = 0.4
        weapon.Primary.Damage = 33
        weapon.Primary.Spread = 0.06
        weapon.Primary.IronAccuracy = 0.025
    end
end )
