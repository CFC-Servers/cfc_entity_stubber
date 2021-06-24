AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_scoped_taurus" )
    weapon.Primary.RPM = 115
    weapon.Primary.ClipSize = 6
    weapon.Primary.DefaultClip = 30
    weapon.Primary.KickUp = 10
    weapon.Primary.KickDown = .5
    weapon.Primary.KickHorizontal = 1
    weapon.Primary.Automatic = false
    weapon.Primary.Ammo = "357"
    weapon.Primary.Damage = 31
    weapon.Primary.Spread = .02
    weapon.Primary.IronAccuracy = .0001
end )
