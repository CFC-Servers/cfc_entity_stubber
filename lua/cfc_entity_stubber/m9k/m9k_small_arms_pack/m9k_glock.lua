if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub( function()
    local weapon = weapons.GetStored( "m9k_glock" )

    weapon.Primary.Damage = 5
    weapon.Primary.Spread = .04
end )