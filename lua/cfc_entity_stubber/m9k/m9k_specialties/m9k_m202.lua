if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub( function()
    local weapon = weapons.GetStored( "m9k_m202" )

    weapon.Spawnable = false
    weapon.AdminSpawnable = false
    weapon.Primary.ClipSize = 10
    weapon.Primary.DefaultClip = 10
    weapon.Primary.KickUp = 1
    weapon.Primary.KickDown = 1
    weapon.Primary.KickHorizontal = 1
    weapon.Primary.Ammo = "pistol"
    weapon.Primary.Round = ( "" )
    weapon.Primary.Spread = 0.5
    weapon.Primary.IronAccuracy = 0.1
end )