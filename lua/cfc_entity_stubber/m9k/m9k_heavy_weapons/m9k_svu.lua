if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub( function()
    local weapon = weapons.GetStored( "m9k_svu" )

    weapon.Primary.ClipSize = 5
    weapon.Primary.KickDown = .2
    weapon.Primary.Damage = 55
    weapon.Primary.Spread = .06
end )
