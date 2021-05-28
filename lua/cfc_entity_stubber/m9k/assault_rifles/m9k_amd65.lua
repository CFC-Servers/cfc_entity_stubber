AddCSLuaFile() 

CFC_M9k_Stubber.registerStub( function()
    local SWEP = cfcEntityStubber.getWeapon( "m9k_amd65" )

    SWEP.Primary.RPM                = 750        
    SWEP.Primary.ClipSize           = 20        
    SWEP.Primary.DefaultClip        = 60
    SWEP.Primary.KickUp             = .7
    SWEP.Primary.KickDown           = 0.2
    SWEP.Primary.KickHorizontal     = 0.4
    
    SWEP.Primary.Damage             = 26
    SWEP.Primary.Spread             = .08
end )
