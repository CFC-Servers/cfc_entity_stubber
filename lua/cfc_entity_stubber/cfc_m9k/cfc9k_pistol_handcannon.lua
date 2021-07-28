AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_model500" )
    weapon.Category = "CFC9k Pistols"
    weapon.Spawnable = true

    weapon.Primary.RPM = 45
    weapon.Primary.ClipSize = 5

    weapon.Primary.KickUp = 5
    weapon.Primary.KickDown = 3
    weapon.Primary.KickHorizontal = 3
    weapon.Primary.Damage = 85
    weapon.Primary.Spread = 0.25
end )
