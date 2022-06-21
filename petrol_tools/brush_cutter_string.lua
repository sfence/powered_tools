
local S = powered_tools.translator

local sounds = {
    poweron = {
      sound = "powered_tools_brush_cutter_poweron",
      sound_param = {max_hear_distance = 32, gain = 1},
    },
    poweroff = {
      sound = "powered_tools_brush_cutter_poweroff",
      sound_param = {max_hear_distance = 32, gain = 1},
    },
    running = {
      sound = "powered_tools_brush_cutter_running",
      sound_param = {max_hear_distance = 32, gain = 1, loop = true, delay = 4},
    },
    onuse = {
      sound = "powered_tools_brush_cutter_onuse",
      sound_param = {max_hear_distance = 32, gain = 1},
    },
    onbreak = {
      sound = "powered_tools_brush_cutter_break",
      sound_param = {max_hear_distance = 32, gain = 1},
    },
  }

local tool_def = {
    tool_description = S("Brush Cutter with String"),
    tool_help = S("Powered by combustion engine."),
    
    tool_name_break = "powered_tools:brush_cutter_body",
    drops_on_break = {
      {
        item = "powered_tools:brush_cutter_string_broken",
        speed = 5,
        y = 0.3,
      },
    },
    
    sounds = sounds,
    
    delay_per_use = 2,
  }

local off_def = {
    inventory_image = "powered_tools_brush_cutter_string.png^powered_tools_brush_cutter_body.png",
    
    sounds = sounds,
    
    delay_poweron = 5,
  }

local on_def = {
    inventory_image = "powered_tools_brush_cutter_string.png^powered_tools_brush_cutter_body.png",
  }

powered_tools.brush_cutter_string = power_generators.register_power_tool("powered_tools:brush_cutter_string", tool_def, off_def, on_def)


local brush_cutter = powered_tools.brush_cutter_string;

function brush_cutter:cb_do_use(itemstack, meta, user, pointed_thing)
  if not user then
    return itemstack, true
  end
  
  if pointed_thing.type=="node" then
    return powered_tools.brush_cutter_string_do_use(self, itemstack, meta, user, pointed_thing)
  end
  
  return itemstack, true
end


