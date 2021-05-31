AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_barret_m82" )
    weapon.Primary.RPM = 200
    weapon.Primary.ClipSize = 10
    weapon.Primary.DefaultClip = 60
    weapon.Primary.KickUp = 1
    weapon.Primary.KickDown = 1
    weapon.Primary.KickHorizontal = 1
    weapon.Primary.Automatic = false
    weapon.Primary.Ammo = "SniperPenetratedRound"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 110
    weapon.Primary.Spread = .01
    weapon.Primary.IronAccuracy = .00001
end )
