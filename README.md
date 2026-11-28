# cfc_entity_stubber

Modify installed weapons, scripted entities, and other addon data without maintaining forks.

## Stub directories

All paths below are relative to `lua/cfc_entity_stubber/` in any installed addon.

| Directory | When it runs | Callback input |
| --- | --- | --- |
| `weapons/<group>/<class>.lua` | `PreRegisterSWEP` | SWEP definition |
| `entities/<group>/<class>.lua` | `PreRegisterSENT` | ENT definition |
| `postentityinit/<group>/<name>.lua` | `InitPostEntity` | No definition |

Each file returns a function. The main loader discovers files and handles AddCSLuaFile automatically. Files can live directly in each directory or in one grouping directory beneath it. Deeper nesting is not supported. Keep realm-specific work inside SERVER or CLIENT guards.

For `weapons/m9k/m9k_ak47.lua`:

```lua
return function( weapon )
    weapon.Primary.Damage = 30
end
```

For `entities/lfs/lunasflightschool_combineheli.lua`:

```lua
return function( entity )
    entity.MaxHealth = 1000
end
```

Weapon and entity filenames are exact class identifiers, including prefixes. Their indexes are separate. Group names only organize files. Duplicate classes within an index report an error and the first discovered path wins. Identical paths across addons collide in GMod's shared Lua filesystem and cannot be distinguished by this loader.

## Work after entity initialization

For `postentityinit/my_addon/adjust_data.lua`:

```lua
return function()
    -- Modify addon data that is available at InitPostEntity.
end
```

These files are included and their callbacks executed at InitPostEntity in each realm. Direct files run first, followed by groups alphabetically; files within each directory run alphabetically. Put shared helper setup in a direct file when grouped callbacks depend on it. Each full path runs independently; delayed filenames are labels, not weapon or entity class identifiers.

A callback error is printed with the colored Stubber prefix, file path, and traceback, and later files still run. Delayed callback return values are ignored. `CFC_EntityStubber_PostRunStubs` fires without arguments after all delayed files have been attempted in the current realm. Listeners should return nothing.

## Registration behavior

Weapon and entity callbacks edit the actual definition before registration stores it. Do not look up the current target with weapons.GetStored or scripted_ents.GetStored inside these callbacks. Inherited fields and base-class tables may not exist yet; initialize missing subtables and resolve base methods inside runtime methods where needed. Entity callbacks receive the ENT definition, not the wrapper returned by scripted_ents.GetStored.

To hide a weapon or entity from conventional spawn-menu use while allowing other addons to create it:

```lua
return function( definition )
    definition.AdminOnly = true
    definition.Spawnable = false
end
```

Only return `false` if you intend to cancel registration entirely. Other callback return values do not stop subsequent hook listeners. Errors are reported and registration continues, possibly retaining changes made before the error. ClassNameOverride, when supplied, determines the lookup class. This follows the engine's [weapon registration](https://github.com/Facepunch/garrysmod/blob/master/garrysmod/lua/includes/modules/weapons.lua) and [entity registration](https://github.com/Facepunch/garrysmod/blob/master/garrysmod/lua/includes/modules/scripted_ents.lua) contracts.
