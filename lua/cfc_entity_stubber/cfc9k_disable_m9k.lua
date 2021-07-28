AddCSLuaFile()
local startsWith = string.StartWith

for _, wep in ipairs( weapons.GetLis() ) do
    local className = wep.ClassName

    if startsWith( className, "m9k_" ) then
        local weaponRef = weapons.GetStored( className )
        weaponRef.Spawnable = false
        weaponRef.AdminSpawnable = true
    end
end
