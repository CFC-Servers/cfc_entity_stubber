AddCSLuaFile() 

cfcEntityStubber.registerStub( function()
    local SWEP = cfcEntityStubber.getWeapon( "m9k_f2000" )

    SWEP.Primary.RPM                = 850        
    SWEP.Primary.ClipSize           = 30        
    SWEP.Primary.DefaultClip        = 60    
    SWEP.Primary.KickUp             = .4                
    SWEP.Primary.KickDown           = .2
    SWEP.Primary.KickHorizontal     = .4        
    
    SWEP.Primary.Damage             = 10
    SWEP.Primary.Spread             = .06
end )
