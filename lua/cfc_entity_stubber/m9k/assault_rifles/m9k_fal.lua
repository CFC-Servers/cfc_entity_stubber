AddCSLuaFile() 

CFC_M9k_Stubber.registerStub( function()
    local SWEP = cfcEntityStubber.getWeapon( "m9k_fal" )

    SWEP.Primary.RPM                = 750            
    SWEP.Primary.ClipSize           = 20        
    SWEP.Primary.DefaultClip        = 60        
    SWEP.Primary.KickUp             = 0.5        
    SWEP.Primary.KickDown           = 0.3        
    SWEP.Primary.KickHorizontal     = 0.5            

    SWEP.Primary.Damage             = 25
    SWEP.Primary.Spread             = .06
end )
