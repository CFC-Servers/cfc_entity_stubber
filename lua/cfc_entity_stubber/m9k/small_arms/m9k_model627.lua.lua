AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_model627" )
    weapon.Primary.RPM = 120
    weapon.Primary.ClipSize = 6
    weapon.Primary.DefaultClip = 30
    weapon.Primary.KickUp = 0.3
    weapon.Primary.KickDown = 0.3
    weapon.Primary.KickHorizontal = 0.3
    weapon.Primary.Automatic = true
    weapon.Primary.Ammo = "357"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 20
    weapon.Primary.Spread = .01
    weapon.Primary.IronAccuracy = .001
end )
