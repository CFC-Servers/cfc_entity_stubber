if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub( function()
    local attachment = CustomizableWeaponry.registeredAttachmentsSKey["bg_longbarrel"]

    attachment.statModifiers = {
        AimSpreadMult        = -0.1,
        DamageMult           =  100,
        OverallMouseSensMult = -0.1,
        RecoilMult           =  0.1
    }

    CustomizableWeaponry:registerAttachment(attachment)
    if CLIENT then
        attachment["description"] = {}
        CustomizableWeaponry:createStatText(attachment)
    end
end )
