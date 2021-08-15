AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_model500"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Pistol:Handcannon"

        weapon.Primary.RPM = 45
        weapon.Primary.ClipSize = 5
        weapon.Primary.KickUp = 7
        weapon.Primary.KickDown = 3
        weapon.Primary.KickHorizontal = 2
        weapon.Primary.Damage = 85
        weapon.Primary.Spread = 0.04
        weapon.Primary.IronAccuracy = 0.007
    end
end )
