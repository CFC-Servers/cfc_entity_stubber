AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_remington1858" )
    weapon.Primary.RPM = 150
    weapon.Primary.ClipSize = 6
    weapon.Primary.DefaultClip = 30
    weapon.Primary.KickUp = 0.9
    weapon.Primary.KickDown = 0.5
    weapon.Primary.KickHorizontal = 0.4
    weapon.Primary.Automatic = false
    weapon.Primary.Ammo = "357"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 34
    weapon.Primary.Spread = .025
    weapon.Primary.IronAccuracy = .012
end )
