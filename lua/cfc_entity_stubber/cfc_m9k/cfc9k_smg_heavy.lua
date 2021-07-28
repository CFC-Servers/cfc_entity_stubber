AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_ump45" )
    weapon.Category = "CFC9k Submachine Guns"
    weapon.Spawnable = true

    weapon.Primary.RPM = 750
    weapon.Primary.ClipSize = 30

    weapon.Primary.KickUp = 0.8
    weapon.Primary.KickDown = 0.4
    weapon.Primary.KickHorizontal = 0.3
    weapon.Primary.Damage = 25
    weapon.Primary.Spread = 0.015
end )
