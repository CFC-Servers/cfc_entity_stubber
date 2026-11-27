# cfc_entity_stubber

Modify installed weapons without maintaining a fork of their weapon pack.
Weapon stubs run on both server and client through [GM:PreRegisterSWEP](https://wiki.facepunch.com/gmod/GM:PreRegisterSWEP), before the weapon is stored and its spawn-menu entry is built.

## Weapon stubs

Create a file in your own addon at:

```text
lua/cfc_entity_stubber/weapons/m9k_ak47.lua
```

The filename is the exact weapon class, including any prefix. Its contents are simply:

```lua
return function( weapon )
    weapon.Primary.KickDown = 0.1
    weapon.Primary.Damage = 30
    weapon.Primary.Spread = 0.08
end
```

No `AddCSLuaFile`, `registerStubber`, `registerStub`, or weapon lookup is needed. The loader distributes the file automatically. Keep realm-specific changes inside `if SERVER` or `if CLIENT` blocks.

One optional grouping directory is supported, for example `weapons/build_kill/m9k_ak47.lua` or `weapons/ttt/weapon_ttt_knife.lua`. The group does not affect the weapon class. Use only one stub per class across all installed addons. Direct files take priority over grouped files; groups and files are scanned alphabetically. Duplicate classes at distinct paths produce an error message and the first path wins. Identical paths in separate addons collide in GMod's shared Lua filesystem and cannot be distinguished by this loader.

## Timing and reloads

The loader indexes paths during autorun and includes only the matching file when a weapon registers. Missing weapon packs therefore do not execute their stubs. Registration uses a direct class lookup instead of scanning every stub. `ClassNameOverride`, when present, determines the lookup class, matching [weapons.Register](https://github.com/Facepunch/garrysmod/blob/master/garrysmod/lua/includes/modules/weapons.lua).

The function receives the actual table being registered. Do not use `weapons.GetStored` to retrieve that weapon here: registration has not stored the new table yet. Inherited fields and other weapon classes may not be available yet either. Create any missing subtable you need to modify. Resolve base-class methods inside the weapon method that uses them, once weapons have finished loading.

Stub return values do not cancel registration or stop other hooks. A stub error is reported with its path and traceback; registration continues, potentially with changes made before the error. Fix the stub and reload the weapon or restart the map.

Stubs run again whenever the weapon calls `weapons.Register`, including normal weapon auto-refresh. Keep changes safe to repeat, especially method wrappers and numerical adjustments. Editing a stub alone does not re-register its weapon. Restart the map after adding, removing, or renaming files, and after installing this rewrite. Weapons registered before this addon's autorun are not patched retroactively; custom early loaders must register after it. Loading the framework again replaces its hook but does not reapply stubs to existing weapons.

## Migrating existing addons

The existing delayed API remains in `legacy.lua` so [Build/Kill](https://github.com/CFC-Servers/cfc_entity_stubber_build_kill) and [TTT](https://github.com/CFC-Servers/cfc_entity_stubber_ttt) can migrate incrementally. Their repositories are not modified by installing this framework.

For each ordinary weapon patch:

1. Move it into `lua/cfc_entity_stubber/weapons/<group>/<actual_weapon_class>.lua`.
2. Replace `cfcEntityStubber.registerStub( function()` with `return function( weapon )` and the closing `end )` with `end`.
3. Remove the `getWeapon` / `weapons.GetStored` lookup and `AddCSLuaFile()`.
4. Remove the original file so the delayed patch does not apply again.
5. Remove a group's old stubber registration only after no legacy files remain in that group.

Examples of filename changes:

| Addon | Existing file | New file under `weapons/` |
| --- | --- | --- |
| Build/Kill | `m9k/deagle.lua` | `build_kill/m9k_deagle.lua` |
| Build/Kill | `cw/cw_ak74.lua` | `build_kill/cw_ak74.lua` |
| TTT | `cfc_ttt/knife.lua` | `ttt/weapon_ttt_knife.lua` |
| TTT | `cfc_ttt/cfc_awp.lua` | `ttt/weapon_ttt_awp.lua` |
| TTT | `cfc_ttt/cfc_jihad.lua` | `ttt/weapon_ttt_jihad.lua` |
| TTT | `cfc_ttt/cfc_newton.lua` | `ttt/weapon_ttt_push.lua` |
| TTT | `cfc_ttt/cfc_silenced_pistol.lua` | `ttt/weapon_ttt_sipistol.lua` |

The migrated knife file is:

```lua
return function( weapon )
    weapon.DeploySpeed = 4
    weapon.Primary.Damage = 70
end
```

TTT's Newton patch currently captures `baseclass.Get( "weapon_tttbase" )` when the patch runs. Move that lookup inside its `Think` method before calling `BaseClass.Think( self )`, rather than capturing it during `PreRegisterSWEP`.

Build/Kill's CW attachments, LFS entity patches, `simple_ent_*` patches, and bulk patches such as `basic_patches.lua` and CSS `set_max_ammo.lua` are not single-weapon stubs. Keep them on the delayed API, or split bulk weapon edits into individual class files. Preserve CW attachment helpers in `stubbers/cw_attachment_stubber.lua`. Review wrappers such as `cw_base.lua` for repeat application before migrating them.

## Delayed API

Legacy files still run at `InitPostEntity` in both realms. Group registration files in `lua/cfc_entity_stubber/stubbers/` can now omit `AddCSLuaFile`:

```lua
cfcEntityStubber.registerStubber( "cw_attachment" )
```

The loader includes Lua files from each registered directory and one level of subdirectories, distributing both registration files and entries automatically. Existing `AddCSLuaFile()` calls are harmless and can be removed. This also applies to legacy weapon entries.

`registerStub( callback )`, `getWeapon( class )`, and the existing loader helpers remain available. `CFC_EntityStubber_PostRunStubs` still fires without arguments after the delayed queue runs in each realm; it does not signal individual weapon registrations. Listeners should return nothing. Helpers such as `getAttachment` are provided by downstream registration files, not this framework.
