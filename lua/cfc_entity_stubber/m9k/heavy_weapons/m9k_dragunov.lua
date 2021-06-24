AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_dragunov" )
    weapon.Primary.RPM = 400
    weapon.Primary.ClipSize = 5
    weapon.Primary.DefaultClip = 60
    weapon.Primary.KickUp = 1
    weapon.Primary.KickDown = .2
    weapon.Primary.KickHorizontal = .5
    weapon.Primary.Automatic = false
    weapon.Primary.Ammo = "SniperPenetratedRound"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 55
    weapon.Primary.Spread = .006
    weapon.Primary.IronAccuracy = .00012
end )
