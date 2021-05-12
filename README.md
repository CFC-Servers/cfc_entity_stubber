# cfc_entity_stubber
This addon allows creation of "stubbers" and "stub" files. Stubbers are used to create functions for the specific stub files. Stub files allow the editor to make specific changes on weapons / entities without modifying the code of the entity.

The stubs are applied after all entities are loaded during server startup, or on client after all entities initialized.


# Example stubber registration
```lua
-- lua/cfc_entity_stubber/stubbers/m9k_stubber.lua
AddCSLuaFile()
cfcEntityStubber.registerStubber( "m9k" )
```
# Example stub registration

```lua
-- lua/cfc_entity_stubber/m9k/m9k_assault_rifles/m9k_ak47.lua
AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "m9k_ak47" )
    weapon.Primary.KickDown = 0.1
    weapon.Primary.Damage = 10000
    weapon.Primary.Spread = .08
end )
```
# Inner workings

1. The main stubber gets loaded and includes for all files in:

        lua/cfc_entity_stubber/stubbers

2. The main stubber looks through all the folders that the stubbers registered.

    Looking at files in and it's 1 depth sub folders and registering the files found.

        lua/cfc_entity_stubber/stubname
    
3. The main stubber includes all files found.

This happens on InitPostEntity for both client and server.
