AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_colt1911" )
    weapon.Category = "CFC9k Pistols"

    weapon.Spawnable = true

    weapon.Primary.RPM = 400
    weapon.Primary.ClipSize = 9

    weapon.Primary.KickUp = 1.25
    weapon.Primary.KickDown = 0.25
    weapon.Primary.KickHorizontal = 0.5
    weapon.Primary.Damage = 34
    weapon.Primary.Spread = 0.04
end )
