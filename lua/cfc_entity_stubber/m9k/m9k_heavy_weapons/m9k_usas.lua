if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub( function()
    local weapon = weapons.GetStored( "m9k_usas" )

    weapon.Primary.RPM = 200
    weapon.Primary.ClipSize = 10
    weapon.Primary.Damage = 3
    weapon.Primary.Spread = .06
    weapon.Primary.IronAccuracy = .06
end )