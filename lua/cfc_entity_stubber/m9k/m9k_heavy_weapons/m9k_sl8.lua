if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub( function()
    local weapon = weapons.GetStored( "m9k_sl8" )

    weapon.Primary.RPM = 250
    weapon.Primary.KickUp = 1
    weapon.Primary.KickDown = -1
    weapon.Primary.Damage = 45
end )