AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_smgp90" )
    weapon.Category = "CFC9k Submachine Guns"
    weapon.Spawnable = true

    weapon.Primary.RPM = 900
    weapon.Primary.ClipSize = 60

    weapon.Primary.KickUp = 0.6
    weapon.Primary.KickDown = 0.4
    weapon.Primary.KickHorizontal = 0.3
    weapon.Primary.Damage = 17
    weapon.Primary.Spread = 1.25
end )
