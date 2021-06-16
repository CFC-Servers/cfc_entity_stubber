AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_browningauto5" )
    weapon.Primary.RPM = 250
    weapon.Primary.ClipSize = 6
    weapon.Primary.DefaultClip = 30
    weapon.Primary.KickUp = 1
    weapon.Primary.KickDown = 0.8
    weapon.Primary.KickHorizontal = 0.6
    weapon.Primary.Automatic = false
    weapon.Primary.Ammo = "buckshot"
    weapon.Primary.NumShots = 9//howmanybulletstoshoot,usewithshotguns
    weapon.Primary.Damage = 10//basedamage,scaledbygame
    weapon.Primary.Spread = .03//definefrom
    weapon.Primary.IronAccuracy = .03//hastobethesameasprimary.spread
end )
