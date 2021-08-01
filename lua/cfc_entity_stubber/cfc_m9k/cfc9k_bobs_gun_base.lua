AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "bobs_gun_base" )
    weapon.ShouldDoMoveSpread = false
end )