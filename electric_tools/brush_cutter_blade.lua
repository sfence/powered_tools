
local S = powered_tools.translator

powered_tools.brush_cutter_blade_electric = appliances.tool:new(
    {
      tool_name = "powered_tools:brush_cutter_blade_electric",
      
      tool_description = S("Electric Brush Cutter with Blade"),
    	tool_help = S("Powered by battery."),
      
      tool_name_break = "powered_tools:brush_cutter_electric_body",
      drops_on_break = {
        {
          item = "powered_tools:brush_cutter_blade_broken",
          speed = 5,
          y = 0.3,
        },
      },
    })

local brush_cutter = powered_tools.brush_cutter_blade_electric;

brush_cutter:battery_data_register(
  {
    ["technic_battery"] = {
      },
    ["power_generators_battery"] = {
      },
  })

function brush_cutter:cb_do_use(itemstack, meta, user, pointed_thing)
  if not user then
    return itemstack
  end
  
  if pointed_thing.type=="node" then
    return powered_tools.brush_cutter_blade_do_use(self, itemstack, meta, user, pointed_thing)
  end
  
  return itemstack
end

brush_cutter:register_tool({
    inventory_image = "powered_tools_brush_cutter_blade.png^powered_tools_brush_cutter_electric_body.png",
  })

