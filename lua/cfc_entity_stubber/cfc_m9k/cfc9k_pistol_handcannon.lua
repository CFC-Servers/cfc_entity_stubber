AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapons = { "m9k_model500", "m9k_deagle" }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "Pistol:Handcannon"

        weapon.Primary.RPM = 45
        weapon.Primary.ClipSize = 5
        weapon.Primary.KickUp = 8
        weapon.Primary.KickDown = 3
        weapon.Primary.KickHorizontal = 3
        weapon.Primary.Damage = 85
        weapon.Primary.Spread = 0.05
        weapon.Primary.IronAccuracy = 0.015
    end
end )
