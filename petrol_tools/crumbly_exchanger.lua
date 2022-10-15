
local S = powered_tools.translator

local sounds = {
    poweron = {
      sound = "powered_tools_crumbly_exchanger_poweron",
      sound_param = {max_hear_distance = 32, gain = 1},
    },
    poweroff = {
      sound = "powered_tools_crumbly_exchanger_poweroff",
      sound_param = {max_hear_distance = 32, gain = 1},
    },
    running = {
      sound = "powered_tools_crumbly_exchanger_running",
      sound_param = {max_hear_distance = 32, gain = 1, loop = true, delay = 5},
    },
    onuse = {
      sound = "powered_tools_crumbly_exchanger_onuse",
      sound_param = {max_hear_distance = 32, gain = 1, delay = 1},
    },
  }

local tool_def = {
    tool_description = S("Crumbly Node Exchanger"),
    tool_help = S("Powered by combustion engine."),
    
    sounds = sounds,
    
    delay_per_use = 1,
  }

local off_def = {
    inventory_image = "powered_tools_crumbly_exchanger.png",
    
    sounds = sounds,
    
    delay_poweron = 5,
  }

local on_def = {
    inventory_image = "powered_tools_crumbly_exchanger.png",
  }

powered_tools.crumbly_exchanger = power_generators.register_power_tool("powered_tools:crumbly_exchanger", tool_def, off_def, on_def)


local crumbly_exchanger = powered_tools.crumbly_exchanger;

function crumbly_exchanger:cb_do_use(itemstack, meta, user, pointed_thing)
  if not user then
    return itemstack
  end
  
  if pointed_thing.type=="node" then
    return powered_tools.crumbly_exchanger_do_use(self, itemstack, meta, user, pointed_thing)
  end
  
  return itemstack
end

