if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub( function()
    local weapon = weapons.GetStored( "m9k_dbarrel" )

    weapon.Category = "M9K Sniper Rifles"
    weapon.PrintName = "Elephant Gun"
    weapon.HoldType = "ar2"
    weapon.Primary.RPM = 50
    weapon.Primary.Ammo = "AirboatGun"
    weapon.ShellTime = .85
    weapon.Primary.NumShots = 1
    weapon.Primary.Damage = 85
    weapon.Primary.IronAccuracy = .002
end )