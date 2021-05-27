if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub( function()
    local weapon = weapons.GetStored( "m9k_m4a1" )

    weapon.Primary.KickDown = 0.2
    weapon.Primary.Damage = 15
    weapon.Primary.Spread = .03
end )