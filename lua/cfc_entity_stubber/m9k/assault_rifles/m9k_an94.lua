AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_an94" )
    weapon.Primary.RPM = 600
    weapon.Primary.ClipSize = 30
    weapon.Primary.DefaultClip = 60
    weapon.Primary.KickUp = 0.3
    weapon.Primary.KickDown = 0.1
    weapon.Primary.KickHorizontal = 0.3
    weapon.Primary.Automatic = true
    weapon.Primary.Ammo = "ar2"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 31
    weapon.Primary.Spread = .015
    weapon.Primary.IronAccuracy = .005
    weapon.Primary.Burst = false
    weapon.Primary.PrevShots = weapon.Primary.NumShots
end )
