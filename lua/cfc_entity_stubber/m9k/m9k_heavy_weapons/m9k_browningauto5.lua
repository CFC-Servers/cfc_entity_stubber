if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub( function()
    local weapon = weapons.GetStored( "m9k_browningauto5" )

    weapon.Primary.RPM = 200
    weapon.Primary.Damage = 3	-- base damage, scaled by game
    weapon.Primary.Spread = .05	-- define from-the-hip accuracy ( 1 is terrible, .0001 is exact )
    weapon.Primary.IronAccuracy = .05 -- has to be the same as primary.spread
end )
