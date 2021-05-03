if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub( function()
    local weapon = weapons.GetStored( "m9k_spas12" )

    weapon.Primary.RPM = 300
    weapon.Primary.Damage = 3
    weapon.Primary.Spread = .05
    weapon.Primary.IronAccuracy = .05
end )