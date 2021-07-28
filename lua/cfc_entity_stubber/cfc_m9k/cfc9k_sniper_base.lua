AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_m24" )
    weapon.Category = "CFC9k Sniper Rifles"
    weapon.Spawnable = true

    weapon.Primary.RPM = 50
    weapon.Primary.ClipSize = 8

    weapon.Primary.KickUp = 2
    weapon.Primary.KickDown = 4
    weapon.Primary.KickHorizontal = 8
    weapon.Primary.Damage = 70
    weapon.Primary.Spread = 0.1
end )
