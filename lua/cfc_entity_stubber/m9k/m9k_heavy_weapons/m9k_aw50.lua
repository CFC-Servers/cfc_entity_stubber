if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub( function()
    local weapon = weapons.GetStored( "m9k_aw50" )
	
    weapon.PrintName = "AW50 AMR"
    weapon.Primary.Spread = .1
    weapon.Primary.Damage = 150
    weapon.Primary.IronAccuracy = .0020
end )
