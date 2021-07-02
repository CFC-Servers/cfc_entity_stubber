AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local attachment = cfcEntityStubber.getAttachment( "md_eotech_xps_kk" )

    attachment.statModifiers = {
        OverallMouseSensMult = -0.05
    }

    cfcEntityStubber.applyAttachmentChange( attachment )
end )
