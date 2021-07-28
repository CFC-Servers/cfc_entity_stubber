AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_ithacam37" )
    weapon.Category = "CFC9k Shotguns"
    weapon.Spawnable = true

    weapon.Primary.RPM = 60
    weapon.Primary.ClipSize = 8

    weapon.Primary.KickUp = 3
    weapon.Primary.KickDown = 2
    weapon.Primary.KickHorizontal = 5
    weapon.Primary.NumShots = 9
    weapon.Primary.Damage = 12
    weapon.Primary.Spread = 0.13
    weapon.ShellTime = 0.4
end )
