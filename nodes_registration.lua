
-- use adaptation data
local leaves = adaptation_lib.get_list("leaves")
for _,node_name in pairs(leaves or {}) do
  powered_tools.add_brush_cutter_blade_node(node_name);
  powered_tools.add_chainsaw_node(node_name);
end

local needles = adaptation_lib.get_list("needles")
for _,node_name in pairs(needles or {}) do
  powered_tools.add_brush_cutter_blade_node(node_name);
  powered_tools.add_chainsaw_node(node_name);
end

local saplings = adaptation_lib.get_list("sapling")
for _,node_name in pairs(saplings or {}) do
  powered_tools.add_brush_cutter_blade_node(node_name);
end

local trees = adaptation_lib.get_list("tree")
for _,node_name in pairs(trees or {}) do
  powered_tools.add_chainsaw_node(node_name);
end

local stems = adaptation_lib.get_list("bush_stem")
for _,node_name in pairs(stems or {}) do
  powered_tools.add_brush_cutter_blade_node(node_name);
  powered_tools.add_chainsaw_node(node_name);
end

local grass = adaptation_lib.get_list("grass")
for _,node_name in pairs(grass or {}) do
  powered_tools.add_brush_cutter_string_node(node_name);
end

if minetest.get_modpath("default") then
  -- stems
  powered_tools.add_brush_cutter_blade_node("default:dry_shrub");
  -- grass 3
  powered_tools.add_brush_cutter_string_nodes("default:fern_", 3)
end

if minetest.get_modpath("aquaz") then
  powered_tools.add_algae_coloctor_node("aquaz:orange_alga");
  powered_tools.add_algae_coloctor_node("aquaz:purple_alga");
  powered_tools.add_algae_coloctor_node("aquaz:red_alga");
end

if minetest.get_modpath("hades_aquaz") then
  powered_tools.add_algae_coloctor_node("hades_aquaz:orange_alga");
  powered_tools.add_algae_coloctor_node("hades_aquaz:purple_alga");
  powered_tools.add_algae_coloctor_node("hades_aquaz:red_alga");
end

