AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_auga3" )
    weapon.Primary.RPM = 700
    weapon.Primary.ClipSize = 30
    weapon.Primary.DefaultClip = 60
    weapon.Primary.KickUp = .4
    weapon.Primary.KickDown = .4
    weapon.Primary.KickHorizontal = .5
    weapon.Primary.Automatic = true
    weapon.Primary.Ammo = "ar2"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 22
    weapon.Primary.Spread = .025
    weapon.Primary.IronAccuracy = .02
end )
