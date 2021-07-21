AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "bobs_scoped_base" )
    weapon.ShouldDoMoveSpread = false

    function weapon:IronSight()
        local owner = self:GetOwner()
        if owner:GetViewEntity() ~= owner or not self:GetNWBool("CanIronSights") then return end

        if self:GetNWInt("ScopeState") == 0 then
            owner:DrawViewModel( true )
        else
            owner:DrawViewModel( false )
        end

        if owner:KeyPressed( IN_ATTACK2 ) then
            owner:SetFOV( 10, 0.2 )
            self.DrawCrosshair = false
            self:SetNWInt( "ScopeState", 1 )
            owner:DrawViewModel( false )
            owner:EmitSound("weapons/zoom.wav")
        elseif owner:KeyReleased( IN_ATTACK2 ) then
            owner:SetFOV( 0, 0.1 )
            self.DrawCrosshair = true
            self:SetNWInt( "ScopeState", 0 )
            owner:DrawViewModel( true )
            owner:EmitSound("weapons/zoom.wav")
        end
    end

    function weapon:Think()
        self:IronSight()

        if self:GetNWInt( "ScopeState" ) > 0 then
            self.Primary.Spread = self.Primary.SpreadZoomed
        else
            self.Primary.Spread = self.Primary.SpreadBefore
        end
    end

    function weapon:AdjustMouseSensitivity()
        local Scope = self:GetNWInt( "ScopeState" )

        if Scope ~= 0 then
            return 0.1
        end
    end

    function weapon:Reload()
        if SERVER and game.SinglePlayer() then self:CallOnClient( "Reload" ) end
        timer.Remove("m9k_resetscope_" .. self.OurIndex)

        local owner = self:GetOwner()

        if self:GetNWInt("ScopeState") > 0 then
            owner:SetFOV( 0, 0.1 )
            self.DrawCrosshair = true
            self:SetNWInt( "ScopeState", 0 )
            owner:DrawViewModel( true )
            owner:EmitSound( "weapons/zoom.wav" )
            self.NextReloadTime = CurTime() + 0.5
        end

        if self.CanReload and self.NextReloadTime < CurTime() and owner:GetAmmoCount(self.Primary.Ammo) >= 1 and self:Clip1() < self:GetMaxClip1() then
            self:DefaultReload( ACT_VM_RELOAD )
            owner:SetAnimation( PLAYER_RELOAD )
        end
    end

    function weapon:SecondaryAttack()
        return false
    end
end )
