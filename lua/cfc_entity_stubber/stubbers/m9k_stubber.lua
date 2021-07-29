AddCSLuaFile()

local function stubM9kBase()
    local base = cfcEntityStubber.getWeapon( "bobs_gun_base" )
    base.Spawnable = false
    base.AdminSpawnable = true
    base.ShouldDoMoveSpread = false

    base.OriginalShootBullet = base.ShootBullet
    base.ShootBullet = function( self, damage, _, numBullets, spread )
        if self.IronSightState then
            spread = self.Primary.IronAccuracy or spread
        end

        return self:OriginalShootBullet( damage, _, numBullets, spread )
    end
end

stubM9kBase()
cfcEntityStubber.registerStubber( "cfc_m9k" )
