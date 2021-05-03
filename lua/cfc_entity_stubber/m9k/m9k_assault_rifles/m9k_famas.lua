if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub( function()
    local weapon = weapons.GetStored( "m9k_famas" )

    weapon.Primary.KickDown = 0.2
    weapon.Primary.Damage = 20
    weapon.Primary.Spread = .04
end )