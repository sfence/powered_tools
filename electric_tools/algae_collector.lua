
local S = powered_tools.translator

powered_tools.algae_collector_electric = appliances.tool:new(
    {
      tool_name = "powered_tools:algae_collector_electric",
      
      tool_description = S("Electric Algae Collectorr"),
    	tool_help = S("Powered by battery."),
    })

local algae_collector = powered_tools.algae_collector_electric;

algae_collector:battery_data_register(
  {
    ["technic_battery"] = {
      },
    ["power_generators_battery"] = {
      },
  })

function algae_collector:cb_do_use(itemstack, meta, user, pointed_thing)
  if not user then
    return itemstack
  end
  
  if pointed_thing.type=="node" then
    return powered_tools.algae_collector_do_use(self, itemstack, meta, user, pointed_thing)
  end
  
  return itemstack
end

algae_collector:register_tool({
    inventory_image = "powered_tools_algae_collector_electric.png",
  })

