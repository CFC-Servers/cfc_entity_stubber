if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub( function()
    local weapon = weapons.GetStored( "m9k_intervention" )

    weapon.PrintName = "M200 Nightstalker"
    weapon.Secondary.UseMilDot = false
    weapon.Secondary.UseElcan = true
    weapon.Primary.Damage = 75
    weapon.Primary.Spread = .05
    weapon.Primary.IronAccuracy = .001
end )