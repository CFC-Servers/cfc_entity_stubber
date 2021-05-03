if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub( function()
    local weapon = weapons.GetStored( "m9k_g3a3" )

    weapon.Primary.Damage = 25
    weapon.Primary.Spread = .08
end )