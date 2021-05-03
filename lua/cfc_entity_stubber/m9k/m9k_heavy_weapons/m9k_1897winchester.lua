if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub( function()
    local weapon = weapons.GetStored( "m9k_1897winchester" )

    weapon.Primary.RPM = 50
    weapon.ShellTime = .4
    weapon.Primary.Spread = .1	-- define from-the-hip accuracy ( 1 is terrible, .0001 is exact )
    weapon.Primary.IronAccuracy = .1 -- has to be the same as primary.spread
end )
