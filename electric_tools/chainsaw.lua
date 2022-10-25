
local S = powered_tools.translator

powered_tools.chainsaw = appliances.tool:new(
    {
      tool_name = "powered_tools:chainsaw_electric",
      
      tool_description = S("Electric Chainsaw"),
    	tool_help = S("Powered by battery."),
    })

local chainsaw = powered_tools.chainsaw;

chainsaw:battery_data_register(
  {
    ["technic_battery"] = {
      },
    ["power_generators_battery"] = {
      },
  })

function chainsaw:cb_do_use(itemstack, meta, user, pointed_thing)
  if not user then
    return itemstack
  end
  
  if pointed_thing.type=="node" then
    return powered_tools.chainsaw_do_use(self, itemstack, meta, user, pointed_thing)
  end
  
  return itemstack
end

chainsaw:register_tool({
    inventory_image = "powered_tools_chainsaw_electric.png",
  })

minetest.register_tool("powered_tools:chainsaw_electric_body", {
    description = S("Electric Chainsaw Body"),
    inventory_image = "powered_tools_chainsaw_electric_body.png",
    
    _tool_after_use = {
      ["powered_tools:chainsaw_chain"] = "powered_tools:chainsaw_electric",
    },
    
    on_use = powered_tools.tool_body_on_use
  })
appliances.add_item_help("powered_tools:chainsaw_electric_body", S("Use me with chainsaw chain under me."))

