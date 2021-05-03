if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub( function()
    local weapon = weapons.GetStored( "m9k_honeybadger" )

    weapon.Primary.Damage = 13
end )