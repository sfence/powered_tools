
local modname = minetest.get_current_modname()
local modpath = minetest.get_modpath(modname).."/electric_tools"

dofile(modpath.."/chainsaw.lua")
dofile(modpath.."/brush_cutter.lua")
dofile(modpath.."/brush_cutter_string.lua")
dofile(modpath.."/brush_cutter_blade.lua")
dofile(modpath.."/algae_collector.lua")
dofile(modpath.."/crumbly_exchanger.lua")

