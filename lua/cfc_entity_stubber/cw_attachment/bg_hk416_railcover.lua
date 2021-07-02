AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local attachment = cfcEntityStubber.getAttachment( "bg_hk416_railcover" )

    attachment.statModifiers = {
        RecoilMult = -0.15,
        OverallMouseSensMult = -0.10
    }

    cfcEntityStubber.applyAttachmentChange( attachment )
end )
