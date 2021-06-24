AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_model500" )
    weapon.Primary.RPM = 50
    weapon.Primary.ClipSize = 5
    weapon.Primary.DefaultClip = 30
    weapon.Primary.KickUp = 5
    weapon.Primary.KickDown = 0
    weapon.Primary.KickHorizontal = 1
    weapon.Primary.Automatic = false
    weapon.Primary.Ammo = "357"
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 40
    weapon.Primary.Spread = .02
    weapon.Primary.IronAccuracy = .015
end )
