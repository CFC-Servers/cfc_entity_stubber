AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_dbarrel" )
    weapon.Primary.RPM = 180
    weapon.Primary.ClipSize = 2
    weapon.Primary.DefaultClip = 30
    weapon.Primary.KickUp = 10
    weapon.Primary.KickDown = 5
    weapon.Primary.KickHorizontal = 5
    weapon.Primary.Automatic = false
    weapon.Primary.Ammo = "buckshot"
    weapon.Primary.NumShots = 18
    weapon.Primary.Damage = 10
    weapon.Primary.Spread = .03
    weapon.Primary.IronAccuracy = .03
end )
