if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub( function()
    local weapon = weapons.GetStored( "m9k_winchester73" )

    weapon.Primary.Damage = 55
    weapon.Primary.Spread = .05
end )