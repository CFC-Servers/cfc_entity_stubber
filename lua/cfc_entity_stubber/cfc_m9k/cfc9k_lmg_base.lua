AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_m249lmg" )
    weapon.Category = "CFC9k Machine Guns"
    weapon.Spawnable = true

    weapon.Primary.RPM = 800
    weapon.Primary.ClipSize = 100

    weapon.Primary.KickUp = 1.3
    weapon.Primary.KickDown = 0.7
    weapon.Primary.KickHorizontal = 1
    weapon.Primary.Damage = 25
    weapon.Primary.Spread = 0.3
end )
