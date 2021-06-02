AddCSLuaFile() 

cfcEntityStubber.registerStub( function()
    local SWEP = cfcEntityStubber.getWeapon( "m9k_winchester73" )

    SWEP.Primary.RPM                = 66        
    SWEP.Primary.ClipSize           = 8            
    SWEP.Primary.DefaultClip        = 30    
    SWEP.Primary.KickUp             = .2                
    SWEP.Primary.KickDown           = 0        
    
    SWEP.Primary.Damage             = 55
    SWEP.Primary.Spread             = .05
end )
