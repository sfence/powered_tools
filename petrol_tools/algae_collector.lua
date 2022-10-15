
local S = powered_tools.translator

local sounds = {
    poweron = {
      sound = "powered_tools_algae_collector_poweron",
      sound_param = {max_hear_distance = 32, gain = 1},
    },
    poweroff = {
      sound = "powered_tools_algae_collector_poweroff",
      sound_param = {max_hear_distance = 32, gain = 1},
    },
    running = {
      sound = "powered_tools_algae_collector_running",
      sound_param = {max_hear_distance = 32, gain = 1, loop = true, delay = 5},
    },
    onuse = {
      sound = "powered_tools_algae_collector_onuse",
      sound_param = {max_hear_distance = 32, gain = 1},
    },
  }

local tool_def = {
    tool_description = S("Algae Collector"),
    tool_help = S("Powered by combustion engine."),
    
    sounds = sounds,
    
    delay_per_use = 2,
  }

local off_def = {
    inventory_image = "powered_tools_algae_collector.png",
    
    sounds = sounds,
    
    delay_poweron = 5,
  }

local on_def = {
    inventory_image = "powered_tools_algae_collector.png",
  }

powered_tools.algae_collector = power_generators.register_power_tool("powered_tools:algae_collector", tool_def, off_def, on_def)


local algae_collector = powered_tools.algae_collector;

function algae_collector:cb_do_use(itemstack, meta, user, pointed_thing)
  if not user then
    return itemstack
  end
  
  if pointed_thing.type=="node" then
    return powered_tools.algae_collector_do_use(self, itemstack, meta, user, pointed_thing)
  end
  
  return itemstack
end

