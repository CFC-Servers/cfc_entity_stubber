if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub( function()
    local weapon = weapons.GetStored( "m9k_model500" )

    weapon.Primary.RPM = 50
    weapon.Primary.KickUp = 5
    weapon.Primary.KickDown = 0
end )