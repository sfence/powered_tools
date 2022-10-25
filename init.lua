
minetest.log("action", "[MOD] Powered tools loading...")

powered_tools = {
  translator = minetest.get_translator("powered_tools")
}

local modname = minetest.get_current_modname()
local modpath = minetest.get_modpath(modname)

dofile(modpath.."/setting.lua")

dofile(modpath.."/adaptation.lua")

dofile(modpath.."/functions.lua")
dofile(modpath.."/api.lua")

dofile(modpath.."/electric_tools/electric_tools.lua")
if minetest.get_modpath("power_generators") then
  if power_generators.settings.enable_petrol_tools then
    dofile(modpath.."/petrol_tools/petrol_tools.lua")
  end
end

dofile(modpath.."/nodes_registration.lua")

dofile(modpath.."/craftitems.lua")
dofile(modpath.."/crafting.lua")

minetest.log("action", "[MOD] Powered tools loaded.")

