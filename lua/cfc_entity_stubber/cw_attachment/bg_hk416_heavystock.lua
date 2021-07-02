AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local attachment = cfcEntityStubber.getAttachment( "bg_hk416_heavystock" )

    attachment.statModifiers = {
        RecoilMult = -0.1,
        OverallMouseSensMult = -0.1
    }

    cfcEntityStubber.applyAttachmentChange( attachment )
end )
