AddCSLuaFile()

local base = cfcEntityStubber.getWeapon( "bobs_gun_base" )
base.Spawnable = false
base.AdminSpawnable = true
base.ShouldDoMoveSpread = false

base.OriginalShootBullet = base.ShootBullet
base.ShootBullet = function( damage, _, numBullets, spread )
    if self.IronSightState then
        spread = self.IronAccuracy or spread
    end

    return self:OriginalShootBullet( damage, _, numBullets, spread )
end
