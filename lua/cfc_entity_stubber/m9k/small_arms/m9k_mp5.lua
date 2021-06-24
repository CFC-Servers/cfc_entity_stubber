AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_mp5" )
    weapon.Primary.RPM = 800
    weapon.Primary.ClipSize = 30
    weapon.Primary.DefaultClip = 60
    weapon.Primary.KickUp = 0.1
    weapon.Primary.KickDown = 0.1
    weapon.Primary.KickHorizontal = 0.2
    weapon.Primary.Automatic = true
    weapon.Primary.Ammo = "smg1"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 10
    weapon.Primary.Spread = .023
    weapon.Primary.IronAccuracy = .013
end )
