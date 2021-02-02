# cfc_entity_stubber
jk it's a cw2 stubber

Allows for the stubbing of almost all properties on Entities without having to actually modify the Entities files directly.

One can create the stub files in `lua/cfc_entity_stubber/stubs/<pack>/<weapon_name>.lua` (see below for example).

The stubs are applied after all entities are loaded during server startup.




# Example stub registration
```lua
-- lua/cfc_entity_stubber/stubs/cw2_guns/cw_ak74.lua
if SERVER then AddCSLuaFile() end

CFC_Entity_Stubber.registerStub( function()
    local weapon = weapons.GetStored( "cw_ak74" )

    weapon.Shots = 10
    weapon.Damage = 100
    weapon.DeployTime = 0
end )
```

# Example stub registration
```lua
-- lua/cfc_entity_stubber/stubs/cw2_attachments/bg_longbarrel.lua.lua
if SERVER then AddCSLuaFile() end

CFC_Entity_Stubber.registerStub( "bg_longbarrel", function()
    local attachment = CFC_Entity_Stubber.getAttachment( "bg_longbarrel" )

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
```
