AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_svt40" )
    weapon.Primary.RPM = 350
    weapon.Primary.ClipSize = 5
    weapon.Primary.DefaultClip = 60
    weapon.Primary.KickUp = 1
    weapon.Primary.KickDown = .2
    weapon.Primary.KickHorizontal = 1
    weapon.Primary.Automatic = false
    weapon.Primary.Ammo = "ar2"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 50
    weapon.Primary.Spread = .03
    weapon.Primary.IronAccuracy = .0001
end )
