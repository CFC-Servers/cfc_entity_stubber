AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_m24" )
    weapon.Primary.RPM = 40
    weapon.Primary.ClipSize = 5
    weapon.Primary.DefaultClip = 60
    weapon.Primary.KickUp = .6
    weapon.Primary.KickDown = .6
    weapon.Primary.KickHorizontal = .6
    weapon.Primary.Automatic = false
    weapon.Primary.Ammo = "SniperPenetratedRound"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 97
    weapon.Primary.Spread = .01
    weapon.Primary.IronAccuracy = .000115
end )
