AddCSLuaFile() 

cfcEntityStubber.registerStub( function()
    local SWEP = cfcEntityStubber.getWeapon( "m9k_auga3" )
    
    SWEP.Primary.RPM                = 700
    SWEP.Primary.ClipSize           = 30
    SWEP.Primary.DefaultClip        = 60
    SWEP.Primary.KickUp             = .4
    SWEP.Primary.KickDown           = .2
    SWEP.Primary.KickHorizontal     = .5
    
    SWEP.Primary.Damage             = 18
    SWEP.Primary.Spread             = .05
end )
