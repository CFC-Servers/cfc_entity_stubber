AddCSLuaFile() 

cfcEntityStubber.registerStub( function()
    local SWEP = cfcEntityStubber.getWeapon( "m9k_l85" )

    SWEP.Primary.RPM                = 675        
    SWEP.Primary.ClipSize           = 30        
    SWEP.Primary.DefaultClip        = 60    
    SWEP.Primary.KickUp             = .4  
    SWEP.Primary.KickDown           = .2    
    SWEP.Primary.KickHorizontal     = .5        

    SWEP.Primary.Damage             = 20
    SWEP.Primary.Spread             = .06
end )
