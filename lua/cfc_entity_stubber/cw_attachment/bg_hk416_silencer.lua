AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local attachment = cfcEntityStubber.getAttachment( "bg_hk416_silencer" )

    attachment.statModifiers = {
        RecoilMult = -0.1,
        OverallMouseSensMult = -0.1,
        DamageMult = -0.05
    }

    cfcEntityStubber.applyAttachmentChange( attachment )
end )
