AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_vikhr" )
    weapon.Primary.RPM = 900
    weapon.Primary.ClipSize = 30
    weapon.Primary.DefaultClip = 60
    weapon.Primary.KickUp = 0.3
    weapon.Primary.KickDown = 0.1
    weapon.Primary.KickHorizontal = 0.5
    weapon.Primary.Automatic = true
    weapon.Primary.Ammo = "smg1"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 20
    weapon.Primary.Spread = .07
    weapon.Primary.IronAccuracy = .014
end )
