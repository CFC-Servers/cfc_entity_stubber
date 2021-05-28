AddCSLuaFile() 

CFC_M9k_Stubber.registerStub( function()
    local SWEP = cfcEntityStubber.getWeapon( "m9k_m14sp" )

    SWEP.Primary.RPM                = 550
    SWEP.Primary.ClipSize           = 15        
    SWEP.Primary.DefaultClip        = 60        
    SWEP.Primary.KickUp             = 0.6        
    SWEP.Primary.KickDown           = 0.6        
    SWEP.Primary.KickHorizontal     = 0.6        

    SWEP.SelectiveFire              = false
    SWEP.Primary.Damage             = 55
    SWEP.Primary.Spread             = .1
end )
