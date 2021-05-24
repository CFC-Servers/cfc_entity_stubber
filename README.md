# cfc_entity_stubber

Ever needed to make tweaks to existing weapon packs, but don't want to self-host it? Entity Stubber is for you!
With Entity Stubber, you can make modifications to any entity on your server with minimal coding. Here's how:

Let's say you have a M9k Ak47 that does too much damage. You would register the stub as:


lua/cfc_entity_stubber/stubbers/cw_stubber.lua would be:
```lua
AddCSLuaFile()
cfcEntityStubber.registerStubber( "m9k" )
```
lua/cfc_entity_stubber/cw/cw_ak74.lua would be:
```lua
AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_ak47" )
    weapon.Primary.KickDown = 0.1
    weapon.Primary.Damage = 10000
    weapon.Primary.Spread = .08
end )
```

# Description
This addon allows creation of "stubbers" and "stub" files. Stubbers are used to create functions for the specific stub files. Stub files allow the editor to make specific changes on weapons / entities without modifying the code of the entity.

The stubs are applied after all entities are loaded during server startup, or on client after all entities initialized.

# Inner workings

1. The main stubber gets loaded and includes for all files in:

        lua/cfc_entity_stubber/stubbers

2. The main stubber looks through all the folders that the stubbers registered.

    Looking at files in and it's 1 depth sub folders and registering the files found.

        lua/cfc_entity_stubber/stubname
    
3. The main stubber includes all files found.

This happens on InitPostEntity for both client and server.

# Existing stubber examples ( M9k, CW, CW Attachments )

M9k:

```lua
AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_ak47" )
    weapon.Primary.KickDown = 0.1
    weapon.Primary.Damage = 10000
    weapon.Primary.Spread = .08
end ) 
```

CW:

```lua
AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "cw_ak74" )
    weapon.Shots = 1
    weapon.Damage = 20
    weapon.PrintName = "Stubbed gun!"
end )
```
CW Attachments:

```lua
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
```
