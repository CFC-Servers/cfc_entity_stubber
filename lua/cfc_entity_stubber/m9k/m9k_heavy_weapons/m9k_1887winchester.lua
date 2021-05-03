if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub( function()
    local weapon = weapons.GetStored( "m9k_1887winchester" )

    weapon.Primary.RPM = 60
    weapon.Primary.Damage = 5
end )
