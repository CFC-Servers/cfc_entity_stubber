AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_mp5" )
    weapon.Category = "CFC9k Submachine Guns"
    weapon.Spawnable = true

    weapon.Primary.RPM = 900
    weapon.Primary.ClipSize = 30

    weapon.Primary.KickUp = 0.6
    weapon.Primary.KickDown = 0.4
    weapon.Primary.KickHorizontal = 0.3
    weapon.Primary.Damage = 20
    weapon.Primary.Spread = 0.015
end )
