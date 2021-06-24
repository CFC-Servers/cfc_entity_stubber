AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_mp9" )
    weapon.Primary.RPM = 900
    weapon.Primary.ClipSize = 30
    weapon.Primary.DefaultClip = 60
    weapon.Primary.KickUp = 0.2
    weapon.Primary.KickDown = 0.1
    weapon.Primary.KickHorizontal = 0.2
    weapon.Primary.Automatic = true
    weapon.Primary.Ammo = "ar2"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 10
    weapon.Primary.Spread = .023
    weapon.Primary.IronAccuracy = .014
end )
