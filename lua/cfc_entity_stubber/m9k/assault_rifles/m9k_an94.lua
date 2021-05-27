if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub( function()
    local weapon = weapons.GetStored( "m9k_an94" )

    weapon.SelectiveFire = false
    weapon.Primary.Damage = 23
    weapon.Primary.Spread = .06
end )