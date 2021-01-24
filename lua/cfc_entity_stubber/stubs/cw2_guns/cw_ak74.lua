if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub( function()
    local weapon = weapons.GetStored( "cw_ak74" )

    weapon.Shots = 10
    weapon.Damage = 100
    weapon.DeployTime = 0
end )