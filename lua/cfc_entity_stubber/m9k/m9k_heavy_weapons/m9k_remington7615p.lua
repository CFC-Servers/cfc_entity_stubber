if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub( function()
    local weapon = weapons.GetStored( "m9k_remington7615p" )

    weapon.Primary.Damage = 70
    weapon.Primary.Spread = .03
end )