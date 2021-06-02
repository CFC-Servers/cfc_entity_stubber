AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local SWEP = cfcEntityStubber.getWeapon( "m9k_ak47" )

    SWEP.Primary.RPM                = 600
    SWEP.Primary.ClipSize           = 30
    SWEP.Primary.DefaultClip        = 60
    SWEP.Primary.KickUp             = 0.3
    SWEP.Primary.KickDown           = 0.1
    SWEP.Primary.KickHorizontal     = 0.3        
    
    SWEP.Primary.Damage             = 25
    SWEP.Primary.Spread             = .08
end )
