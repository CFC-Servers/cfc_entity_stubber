AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_barret_m82" )
    weapon.Category = "CFC9k Sniper Rifles"
    weapon.Spawnable = true

    weapon.Primary.RPM = 100
    weapon.Primary.ClipSize = 5

    weapon.Primary.KickUp = 3
    weapon.Primary.KickDown = 1
    weapon.Primary.KickHorizontal = 5
    weapon.Primary.Damage = 5000
    weapon.Primary.Spread = 0.3
end )
