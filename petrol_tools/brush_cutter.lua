
local S = powered_tools.translator

minetest.register_tool("powered_tools:brush_cutter_body", {
    description = S("Brush Cutter Body"),
    inventory_image = "powered_tools_brush_cutter_body.png",
    
    _tool_after_use = {
      ["powered_tools:brush_cutter_string"] = "powered_tools:brush_cutter_string_off",
      ["powered_tools:brush_cutter_blade"] = "powered_tools:brush_cutter_blade_off",
    },
    
    on_use = powered_tools.tool_body_on_use
  })
appliances.add_item_help("powered_tools:brush_cutter_body", S("Use me with brush cutter blade or string under me."))

