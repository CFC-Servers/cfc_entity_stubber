if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub( function()
    local weapon = weapons.GetStored( "m9k_m24" )

    weapon.PrintName = "M24 Recon"
    weapon.Secondary.ScopeZoom = 12
    weapon.Primary.Damage = 70
    weapon.Primary.Spread = .05
    weapon.Primary.IronAccuracy = .0
end )