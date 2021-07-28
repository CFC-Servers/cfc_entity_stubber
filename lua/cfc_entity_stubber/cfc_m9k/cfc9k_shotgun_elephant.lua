AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_dbarrel" )
    weapon.Category = "CFC9k Shotguns"
    weapon.Spawnable = true

    weapon.Primary.RPM = 50
    weapon.Primary.ClipSize = 2

    weapon.Primary.KickUp = 6
    weapon.Primary.KickDown = 2
    weapon.Primary.KickHorizontal = 5
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 125
    weapon.Primary.Spread = 0.03
end )
