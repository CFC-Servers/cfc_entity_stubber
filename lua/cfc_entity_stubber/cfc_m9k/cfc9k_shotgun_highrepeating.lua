AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_striker12" )
    weapon.Category = "CFC9k Shotguns"
    weapon.Spawnable = true

    weapon.Primary.RPM = 325
    weapon.Primary.ClipSize = 12

    weapon.Primary.KickUp = 4
    weapon.Primary.KickDown = 1
    weapon.Primary.KickHorizontal = 2.5
    weapon.Primary.Automatic = true
    weapon.Primary.NumShots = 9
    weapon.Primary.Damage = 4
    weapon.Primary.Spread = 0.18
    weapon.ShellTime = 0.3
end )
