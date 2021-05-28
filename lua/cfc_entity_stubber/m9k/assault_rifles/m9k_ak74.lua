AddCSLuaFile() 

CFC_M9k_Stubber.registerStub( function()
    local SWEP = cfcEntityStubber.getWeapon( "m9k_ak74" )

    SWEP.Spawnable = false
    SWEP.AdminSpawnable = false
    SWEP.Primary.KickDown = 0.1
    SWEP.Primary.Damage = 26
    SWEP.Primary.Spread = .08
end )