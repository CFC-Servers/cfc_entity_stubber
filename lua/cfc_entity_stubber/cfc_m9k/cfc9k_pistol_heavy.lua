AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_colt1911",
        "m9k_usp"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Pistol:Heavy"

        weapon.Primary.RPM = 400
        weapon.Primary.ClipSize = 9
        weapon.Primary.KickUp = 1.5
        weapon.Primary.KickDown = 0.25
        weapon.Primary.KickHorizontal = 0.5
        weapon.Primary.Damage = 34
        weapon.Primary.Spread = 0.035
        weapon.Primary.IronAccuracy = 0.01
    end
end )
