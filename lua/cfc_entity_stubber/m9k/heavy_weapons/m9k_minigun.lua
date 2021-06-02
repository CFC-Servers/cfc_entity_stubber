AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local SWEP = cfcEntityStubber.getWeapon( "m9k_minigun" )
    
    SWEP.Primary.RPM                = 1500
    SWEP.Primary.ClipSize           = 300
    SWEP.Primary.DefaultClip        = 0
    SWEP.Primary.KickUp             = 1.5
    SWEP.Primary.KickDown           = 0.2
    SWEP.Primary.KickHorizontal     = 0.2
    
    SWEP.Primary.Automatic          = true
    SWEP.Primary.Ammo               = "ar2"
    SWEP.Primary.NumShots           = 2
    SWEP.Primary.Damage             = 6
    SWEP.Primary.Spread             = .06
    SWEP.Primary.IronAccuracy       = .08
end )
