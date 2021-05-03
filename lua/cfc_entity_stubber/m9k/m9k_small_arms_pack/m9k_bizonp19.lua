if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub( function()
    local weapon = weapons.GetStored( "m9k_bizonp19" )

    weapon.Primary.Damage = 12
end )