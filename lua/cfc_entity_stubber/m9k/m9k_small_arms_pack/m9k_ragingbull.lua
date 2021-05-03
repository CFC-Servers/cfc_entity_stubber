if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub( function()
    local weapon = weapons.GetStored( "m9k_ragingbull" )

    weapon.Category = "M9K Shotguns"
    weapon.PrintName = "Raging Judge"
    weapon.Primary.RPM = 80
    weapon.Primary.Ammo = "buckshot"
    weapon.Primary.NumShots = 3
    weapon.Primary.Damage = 25
    weapon.Primary.Spread = .06
    weapon.Primary.IronAccuracy = .06
end )