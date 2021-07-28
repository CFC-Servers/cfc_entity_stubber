AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_tar21" )
    weapon.Category = "CFC9k Assault Rifles"
    weapon.Spawnable = true

    weapon.Primary.RPM = 850
    weapon.Primary.ClipSize = 30

    weapon.Primary.KickUp = 0.5
    weapon.Primary.KickDown = 0.3
    weapon.Primary.KickHorizontal = 0.3
    weapon.Primary.Damage = 20
    weapon.Primary.Spread = 0.75
end )
