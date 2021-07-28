AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_minigun" )
    weapon.Category = "CFC9k Machine Guns"
    weapon.Spawnable = true

    weapon.Primary.RPM = 700
    weapon.Primary.ClipSize = 150

    weapon.Primary.KickUp = 1
    weapon.Primary.KickDown = 0.7
    weapon.Primary.KickHorizontal = 1
    weapon.Primary.NumShots = 2
    weapon.Primary.Damage = 15
    weapon.Primary.Spread = 0.5
end )
