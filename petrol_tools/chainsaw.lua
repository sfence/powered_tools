
local S = powered_tools.translator

local sounds = {
    poweron = {
      sound = "powered_tools_chainsaw_poweron",
      sound_param = {max_hear_distance = 32, gain = 1},
    },
    poweroff = {
      sound = "powered_tools_chainsaw_poweroff",
      sound_param = {max_hear_distance = 32, gain = 1},
    },
    running = {
      sound = "powered_tools_chainsaw_running",
      sound_param = {max_hear_distance = 32, gain = 1, loop = true, delay = 5},
    },
    onuse = {
      sound = "powered_tools_chainsaw_onuse",
      sound_param = {max_hear_distance = 32, gain = 1},
    },
  }

local tool_def = {
    tool_description = S("Chainsaw"),
    tool_help = S("Powered by combustion engine."),
    
    sounds = sounds,
    
    delay_per_use = 4,
  }

local off_def = {
    inventory_image = "powered_tools_chainsaw.png",
    
    sounds = sounds,
    
    delay_poweron = 5,
  }

local on_def = {
    inventory_image = "powered_tools_chainsaw.png",
  }

powered_tools.chainsaw = power_generators.register_power_tool("powered_tools:chainsaw", tool_def, off_def, on_def)


local chainsaw = powered_tools.chainsaw;

function chainsaw:cb_do_use(itemstack, meta, user, pointed_thing)
  if not user then
    return itemstack
  end
  
  if pointed_thing.type=="node" then
    return powered_tools.chainsaw_do_use(self, itemstack, meta, user, pointed_thing)
  end
  
  return itemstack
end

minetest.register_tool("powered_tools:chainsaw_body", {
    description = S("Chainsaw Body"),
    inventory_image = "powered_tools_chainsaw_body.png",
    
    _tool_after_use = {
      ["powered_tools:chainsaw_chain"] = "powered_tools:chainsaw_off",
    },
    
    on_use = powered_tools.tool_body_on_use
  })
appliances.add_item_help("powered_tools:chainsaw_body", S("Use me with chainsaw chain under me."))

