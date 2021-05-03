if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub( function()
    local weapon = weapons.GetStored( "m9k_ithacam37" )

    weapon.Primary.Damage = 6
end )