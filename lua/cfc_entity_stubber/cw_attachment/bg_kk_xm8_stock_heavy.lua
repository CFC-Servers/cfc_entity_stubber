AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local attachment = cfcEntityStubber.getAttachment( "bg_kk_xm8_stock_heavy" )

    attachment.statModifiers = {
        RecoilMult = -0.2,
        OverallMouseSensMult = -0.1
    }

    cfcEntityStubber.applyAttachmentChange( attachment )
end )