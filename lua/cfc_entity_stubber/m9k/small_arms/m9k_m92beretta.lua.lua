AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_m92beretta" )
    weapon.Primary.RPM = 500
    weapon.Primary.ClipSize = 15
    weapon.Primary.DefaultClip = 45
    weapon.Primary.KickUp = 1
    weapon.Primary.KickDown = 0.5
    weapon.Primary.KickHorizontal = 0.5
    weapon.Primary.Automatic = false
    weapon.Primary.Ammo = "pistol"
    weapon.Primary.NumShots = 1//howmanybulletstoshoot,usewithshotguns
    weapon.Primary.Damage = 14//basedamage,scaledbygame
    weapon.Primary.Spread = .027//definefrom
    weapon.Primary.IronAccuracy = .019//hastobethesameasprimary.spread
end )
