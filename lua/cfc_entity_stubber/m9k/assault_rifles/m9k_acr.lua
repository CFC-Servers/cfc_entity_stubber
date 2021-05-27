if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub( function()
    local SWEP = cfcEntityStubber.GetStored( "m9k_acr" )

    SWEP.Primary.RPM			    = 825
    SWEP.Primary.ClipSize			= 30
    SWEP.Primary.DefaultClip		= 60
    SWEP.Primary.KickDown = 0.1
    
    SWEP.Primary.Damage = 20
    SWEP.Primary.Spread = .07
    
end )