AddCSLuaFile() 

CFC_M9k_Stubber.registerStub( function()
    local SWEP = cfcEntityStubber.getWeapon( "m9k_scar" )

    SWEP.Primary.RPM                = 625            
    SWEP.Primary.ClipSize           = 30        
    SWEP.Primary.DefaultClip        = 60        
    SWEP.Primary.KickUp             = 0.4        
    SWEP.Primary.KickDown           = 0.2
    SWEP.Primary.KickHorizontal     = 0.3        
    
    SWEP.Primary.Damage             = 25
    SWEP.Primary.Spread             = .06
end )
