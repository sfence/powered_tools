
powered_tools.settings = {}

powered_tools.settings.brush_cutter_range = tonumber(minetest.settings:get("powered_tools_brush_cutter_range") or 1)
powered_tools.settings.brush_cutter_y_range = tonumber(minetest.settings:get("powered_tools_brush_cutter_y_range") or 0)

powered_tools.settings.chainsaw_range = tonumber(minetest.settings:get("powered_tools_chainsaw_range") or 2)

powered_tools.settings.break_enable = minetest.settings:get_bool("powered_tools_break_enable", true)

