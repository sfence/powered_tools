
powered_tools.brush_cutter_string_nodes = {}
powered_tools.brush_cutter_string_groups = {}
powered_tools.brush_cutter_blade_nodes = {}
powered_tools.brush_cutter_blade_groups = {}

powered_tools.chainsaw_nodes = {}
powered_tools.chainsaw_groups = {}

local next_line_offset = 8
if minetest.get_modpath("hades_core") then
  next_line_offset = 10
end

local function is_valid_for(nodename, def, nodes, groups)
  if nodes[nodename] then
    return true
  end
  if def.groups then
    for _,group in pairs(groups) do
      if def.groups[group] then
        return true
      end
    end
  end
  return false
end

function powered_tools.is_valid_for_brush_cutter_string(nodename, def)
  return is_valid_for(nodename, def, powered_tools.brush_cutter_string_nodes, powered_tools.brush_cutter_string_groups)
end
function powered_tools.is_valid_for_brush_cutter_blade(nodename, def)
  return is_valid_for(nodename, def, powered_tools.brush_cutter_blade_nodes, powered_tools.brush_cutter_blade_groups)
end
function powered_tools.is_valid_for_chainsaw(nodename, def)
  return is_valid_for(nodename, def, powered_tools.chainsaw_nodes, powered_tools.chainsaw_groups)
end

local break_enable = powered_tools.settings.break_enable
local brush_cutter_range = powered_tools.settings.brush_cutter_range
local brush_cutter_y_range = powered_tools.settings.brush_cutter_y_range

function powered_tools.brush_cutter_string_do_use(self, itemstack, meta, user, pointed_thing)
  local item_name = itemstack:get_name()
  for x=-brush_cutter_range,brush_cutter_range do
    for y=-brush_cutter_y_range,brush_cutter_y_range do
      for z=-brush_cutter_range,brush_cutter_range do
        local pos = vector.add(pointed_thing.under, vector.new(x, y, z))
        local node = minetest.get_node(pos)
        local def = minetest.registered_nodes[node.name]
        if powered_tools.is_valid_for_brush_cutter_string(node.name, def) then
          if not self:use_energy(itemstack, meta, self.energy_per_use) then
            return itemstack
          end
          local drops = minetest.get_node_drops(node, item_name)
          for _, drop in pairs(drops) do
            minetest.add_item(pos, drop)
          end
          minetest.remove_node(pos)
        else
          if (x==0) and (y==0) and (z==0) then
            self:use_energy(itemstack, meta, self.energy_per_use)
            if break_enable and def.groups and (def.groups.cracky or def.groups.crumbly or def.groups.choppy) then
              -- break it
              self:cb_on_break(itemstack, meta, user, pointed_thing)
              return itemstack, false
            end
            return itemstack, true
          end
        end
      end
    end
  end
  return itemstack, true
end
function powered_tools.brush_cutter_blade_do_use(self, itemstack, meta, user, pointed_thing)
  local item_name = itemstack:get_name()
  for x=-brush_cutter_range,brush_cutter_range do
    for y=-brush_cutter_y_range,brush_cutter_y_range do
      for z=-brush_cutter_range,brush_cutter_range do
        local pos = vector.add(pointed_thing.under, vector.new(x, y, z))
        local node = minetest.get_node(pos)
        local def = minetest.registered_nodes[node.name]
        if powered_tools.is_valid_for_brush_cutter_blade(node.name, def) then
          if (not self:use_energy(itemstack, meta, self.energy_per_use)) then
            self:tool_poweroff(itemstack, user, self.tool_name_off)
            return itemstack
          end
          local drops = minetest.get_node_drops(node, item_name)
          for _, drop in pairs(drops) do
            minetest.add_item(pos, drop)
          end
          minetest.remove_node(pos)
        else
          if (x==0) and (y==0) and (z==0) then
            self:use_energy(itemstack, meta, self.energy_per_use)
            if break_enable and def.groups and (def.groups.cracky or (def.groups.crumbly and def.groups.crumbly<3) or def.groups.choppy) then
              -- break it
              self:cb_on_break(itemstack, meta, user, pointed_thing)
              return itemstack, false
            end
            return itemstack, true
          end
        end
      end
    end
  end
  return itemstack, true
end

local chainsaw_range = powered_tools.settings.chainsaw_range

function powered_tools.chainsaw_do_use(self, itemstack, meta, user, pointed_thing)
  local item_name = itemstack:get_name()
  for x=-chainsaw_range,chainsaw_range do
    for y=-chainsaw_range,chainsaw_range do
      for z=-chainsaw_range,chainsaw_range do
        local pos = vector.add(pointed_thing.under, vector.new(x, y, z))
        local node = minetest.get_node(pos)
        local def = minetest.registered_nodes[node.name]
        if powered_tools.is_valid_for_chainsaw(node.name, def) then
          if (not self:use_energy(itemstack, meta, self.energy_per_use)) then
            self:tool_poweroff(itemstack, user, self.tool_name_off)
            return itemstack
          end
          local drops = minetest.get_node_drops(node, item_name)
          for _, drop in pairs(drops) do
            minetest.add_item(pos, drop)
          end
          minetest.remove_node(pos)
        else
          if (x==0) and (y==0) and (z==0) then
            self:use_energy(itemstack, meta, self.energy_per_use)
            if break_enable and def.groups and (def.groups.cracky or def.groups.crumbly) then
              -- break it
              self:cb_on_break(itemstack, meta, user, pointed_thing)
              return itemstack, false
            end
            return itemstack, true
          end
        end
      end
    end
  end
  return itemstack, true
end

function powered_tools.tool_body_on_use(itemstack, user, pointed_thing)
  local inv = user:get_inventory()
  local index = user:get_wield_index()+next_line_offset
  local nextlinestack = inv:get_stack("main", index)
  local def = itemstack:get_definition()
  local after_name = def._tool_after_use[nextlinestack:get_name()]
  if after_name then
    appliances.swap_stack(itemstack, after_name)
    nextlinestack:take_item(1)
    inv:set_stack("main", index, nextlinestack)
    return itemstack
  end
  local player_name = user:get_player_name()
  if player_name~="" then
    minetest.chat_send_player(player_name, S("No usefull item found under."))
  end
  return nil
end

