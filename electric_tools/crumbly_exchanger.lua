
local S = powered_tools.translator

powered_tools.crumbly_exchanger_electric = appliances.tool:new(
    {
      tool_name = "powered_tools:crumbly_exchanger_electric",
      
      tool_description = S("Electric Crumbly Node Exchanger"),
    	tool_help = S("Powered by battery."),
    })

local crumbly_exchanger = powered_tools.crumbly_exchanger_electric;

crumbly_exchanger:battery_data_register(
  {
    ["technic_battery"] = {
      },
    ["power_generators_battery"] = {
      },
  })

function crumbly_exchanger:cb_do_use(itemstack, meta, user, pointed_thing)
  if not user then
    return itemstack
  end
  
  if pointed_thing.type=="node" then
    return powered_tools.crumbly_exchanger_do_use(self, itemstack, meta, user, pointed_thing)
  end
  
  return itemstack
end

crumbly_exchanger:register_tool({
    inventory_image = "powered_tools_crumbly_exchanger_electric.png",
  })

