if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub( function()
    local weapon = weapons.GetStored( "m9k_jackhammer" )

    weapon.Primary.Damage = 3
end )