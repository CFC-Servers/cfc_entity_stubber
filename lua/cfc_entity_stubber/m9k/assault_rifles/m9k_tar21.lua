AddCSLuaFile() 

CFC_M9k_Stubber.registerStub( function()
    local SWEP = cfcEntityStubber.getWeapon( "m9k_tar21" )

    SWEP.Primary.RPM                = 900            
    SWEP.Primary.ClipSize           = 30        
    SWEP.Primary.DefaultClip        = 60        
    SWEP.Primary.KickUp             = 0.3        
    SWEP.Primary.KickDown           = 0.1
    SWEP.Primary.KickHorizontal     = 0.3        
    
    SWEP.Primary.Damage             = 20
    SWEP.Primary.Spread             = .05
end )
