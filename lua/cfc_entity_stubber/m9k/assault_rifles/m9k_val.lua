AddCSLuaFile() 

cfcEntityStubber.registerStub( function()
    local SWEP = cfcEntityStubber.getWeapon( "m9k_val" )

    SWEP.Primary.RPM                = 900            
    SWEP.Primary.ClipSize           = 20        
    SWEP.Primary.DefaultClip        = 60        
    SWEP.Primary.KickUp             = 0.3        
    SWEP.Primary.KickDown           = 0.1
    SWEP.Primary.KickHorizontal     = 0.5        

    SWEP.Primary.Damage             = 20
    SWEP.Primary.Spread             = .06
end )
