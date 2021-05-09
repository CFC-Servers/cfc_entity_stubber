AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local attachment = cfcEntityStubber.getAttachment( "bg_longbarrel" )

    attachment.statModifiers = {
        AimSpreadMult = -0.1,
        DamageMult = 100,
        OverallMouseSensMult = -0.1,
        RecoilMult = 0.1
    }

    cfcEntityStubber.applyAttachmentChange( attachment )
end )
