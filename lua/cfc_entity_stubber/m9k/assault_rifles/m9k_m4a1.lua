AddCSLuaFile() 

CFC_M9k_Stubber.registerStub( function()
    local SWEP = cfcEntityStubber.getWeapon( "m9k_m4a1" )

    SWEP.Primary.RPM                = 800            
    SWEP.Primary.ClipSize           = 30        
    SWEP.Primary.DefaultClip        = 60        
    SWEP.Primary.KickUp             = 0.4        
    SWEP.Primary.KickDown           = 0.2
    SWEP.Primary.KickHorizontal     = 0.5        

    SWEP.Primary.Damage             = 15
    SWEP.Primary.Spread             = .03
end )
