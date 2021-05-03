if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub( function()
    local weapon = weapons.GetStored( "m9k_fal" )

    weapon.Primary.Damage = 25
    weapon.Primary.Spread = .06
end )