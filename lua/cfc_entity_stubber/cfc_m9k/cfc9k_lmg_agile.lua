AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_m1918bar" )
    weapon.Category = "CFC9k Machine Guns"
    weapon.Spawnable = true

    weapon.Primary.RPM = 450
    weapon.Primary.ClipSize = 20

    weapon.Primary.KickUp = 1.3
    weapon.Primary.KickDown = 0.5
    weapon.Primary.KickHorizontal = 0.4
    weapon.Primary.Damage = 40
    weapon.Primary.Spread = 0.2
end )
