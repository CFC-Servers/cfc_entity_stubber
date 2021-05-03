if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub( function()
    local weapon = weapons.GetStored( "m9k_barret_m82" )

    weapon.PrintName = "M82 AMR"
    weapon.Primary.ClipSize = 5
    weapon.Primary.RPM = 75
    weapon.Primary.Damage = 200
    weapon.Primary.Spread = .1
    weapon.Primary.IronAccuracy = .0022
end )
