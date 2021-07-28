AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_aw50" )
    weapon.Category = "CFC9k Sniper Rifles"
    weapon.Spawnable = true

    weapon.Primary.RPM = 40
    weapon.Primary.ClipSize = 5

    weapon.Primary.KickUp = 4
    weapon.Primary.KickDown = 6
    weapon.Primary.KickHorizontal = 8
    weapon.Primary.Damage = 105
    weapon.Primary.Spread = 0.2
end )
