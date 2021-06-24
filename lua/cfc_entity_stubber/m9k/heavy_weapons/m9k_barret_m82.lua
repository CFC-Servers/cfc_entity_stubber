AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_barret_m82" )
    weapon.Primary.RPM = 75
    weapon.Primary.ClipSize = 5
    weapon.Primary.DefaultClip = 60
    weapon.Primary.KickUp = 1
    weapon.Primary.KickDown = 1
    weapon.Primary.KickHorizontal = 1
    weapon.Primary.Automatic = false
    weapon.Primary.Ammo = "SniperPenetratedRound"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 200
    weapon.Primary.Spread = .1
    weapon.Primary.IronAccuracy = .0022
end )
