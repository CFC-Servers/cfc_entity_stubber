if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub( function()
    local weapon = weapons.GetStored( "m9k_tar21" )

    weapon.Primary.KickDown = 0.1
    weapon.Primary.Damage = 20
    weapon.Primary.Spread = .05
end )