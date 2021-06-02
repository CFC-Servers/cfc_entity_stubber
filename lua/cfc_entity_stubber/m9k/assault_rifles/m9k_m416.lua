AddCSLuaFile() 

cfcEntityStubber.registerStub( function()
    local SWEP = cfcEntityStubber.getWeapon( "m9k_m416" )
    
    SWEP.Primary.RPM                = 800            
    SWEP.Primary.ClipSize           = 30        
    SWEP.Primary.DefaultClip        = 60        
    SWEP.Primary.KickUp             = 0.4        
    SWEP.Primary.KickDown           = 0.2
    SWEP.Primary.KickHorizontal     = 0.6        
    
    SWEP.Primary.Damage             = 20
    SWEP.Primary.Spread             = .04
end )
