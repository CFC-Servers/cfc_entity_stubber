AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapons = {
        "m9k_ump45",
        "m9k_usc",
        "m9k_mp40",
        "m9k_uzi",
        "m9k_sten"
    }

    for _, weaponClass in ipairs( weapons ) do
        local weapon = cfcEntityStubber.getWeapon( weaponClass )
        weapon.Purpose = ""
        weapon.CFC_Category = "SMG:Heavy"

        weapon.Primary.RPM = 700
        weapon.Primary.ClipSize = 30
        weapon.Primary.KickUp = 0.5
        weapon.Primary.KickDown = 0
        weapon.Primary.KickHorizontal = 0.2
        weapon.Primary.Damage = 25
        weapon.Primary.Spread = 0.02
        weapon.Primary.IronAccuracy = 0.01
    end
end )
