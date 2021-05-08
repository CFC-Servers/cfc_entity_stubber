AddCSLuaFile( )

cfcEntityStubber.registerStub( function( )
    weapon = cfcEntityStubber.getWeapon( "m9k_ak47" )
    weapon.Primary.KickDown = 0.1
    weapon.Primary.Damage = 10000
    weapon.Primary.Spread = .08
end )