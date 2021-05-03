if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub( function()
    local weapon = weapons.GetStored( "m9k_f2000" )

    weapon.Primary.KickDown = .2
    weapon.Primary.Damage = 10
    weapon.Primary.Spread = .06
end )