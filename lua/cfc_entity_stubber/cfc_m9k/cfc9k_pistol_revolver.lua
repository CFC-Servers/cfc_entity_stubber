AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_ragingbull" )
    weapon.Category = "CFC9k Pistols"
    weapon.Spawnable = true

    weapon.Primary.RPM = 100
    weapon.Primary.ClipSize = 6

    weapon.Primary.KickUp = 1.5
    weapon.Primary.KickDown = 0.3
    weapon.Primary.KickHorizontal = 0.5
    weapon.Primary.Damage = 50
    weapon.Primary.Spread = 0.03
end )
