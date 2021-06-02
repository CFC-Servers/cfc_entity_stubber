AddCSLuaFile() 

cfcEntityStubber.registerStub( function()
    local SWEP = cfcEntityStubber.getWeapon( "m9k_g3a3" )

    SWEP.Primary.RPM                = 550            
    SWEP.Primary.ClipSize           = 20        
    SWEP.Primary.DefaultClip        = 60        
    SWEP.Primary.KickUp             = 0.4        
    SWEP.Primary.KickDown           = 0.3        
    SWEP.Primary.KickHorizontal     = 0.5        
    
    SWEP.Primary.Damage             = 25
    SWEP.Primary.Spread             = .08
end )
