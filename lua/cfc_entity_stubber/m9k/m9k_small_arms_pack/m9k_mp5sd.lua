if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub( function()
    local weapon = weapons.GetStored( "m9k_mp5sd" )

    weapon.Primary.Damage = 10
end )