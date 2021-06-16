AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_mp7" )
    weapon.Primary.RPM = 950
    weapon.Primary.ClipSize = 30
    weapon.Primary.DefaultClip = 60
    weapon.Primary.KickUp = .5
    weapon.Primary.KickDown = .4
    weapon.Primary.KickHorizontal = .4
    weapon.Primary.Automatic = true
    weapon.Primary.Ammo = "smg1"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 24
    weapon.Primary.Spread = .023
    weapon.Primary.IronAccuracy = .014
end )
