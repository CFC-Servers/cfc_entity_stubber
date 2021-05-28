AddCSLuaFile() 

CFC_M9k_Stubber.registerStub( function()
    local SWEP = cfcEntityStubber.getWeapon( "m9k_m16a4_acog" )

    SWEP.Primary.RPM                = 637
    SWEP.Primary.ClipSize           = 30        
    SWEP.Primary.DefaultClip        = 60    
    SWEP.Primary.KickUp             = .4                
    SWEP.Primary.KickDown           = .3
    SWEP.Primary.KickHorizontal     = .6        
    
    SWEP.SelectiveFire              = false
    SWEP.Primary.Damage             = 32
    SWEP.Primary.Spread             = .06
end )

