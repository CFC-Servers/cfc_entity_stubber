if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub( function()
    local weapon = weapons.GetStored( "m9k_auga3" )

    weapon.Primary.KickDown = .2
    weapon.Primary.Damage = 18
    weapon.Primary.Spread = .05
end )