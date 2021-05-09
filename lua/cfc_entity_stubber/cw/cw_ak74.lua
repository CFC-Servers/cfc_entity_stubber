AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "cw_ak74" )
    weapon.Shots = 10
    weapon.Damage = 10000
    weapon.DeployTime = 0
    weapon.Recoil = 0
    weapon.HipSpread = 0
    weapon.FireDelay = 0.001
    weapon.Primary.ClipSize = 1000
    weapon.Primary.DefaultClip = 1000
    weapon.PrintName = "Admin pew"
    weapon.ShellOffsetMul = 20
end )
