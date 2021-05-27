if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub( function()
    local weapon = weapons.GetStored( "m9k_m14sp" )

    weapon.Primary.RPM = 550
    weapon.SelectiveFire = false
    weapon.Primary.Damage = 55
    weapon.Primary.Spread = .1
end )