
if minetest.get_modpath("default") then
  -- leaves
  powered_tools.add_brush_cutter_blade_node("default:bush_leaves");
  powered_tools.add_brush_cutter_blade_node("default:acacia_bush_leaves");
  powered_tools.add_brush_cutter_blade_node("default:blueberry_bush_leaves");
  powered_tools.add_brush_cutter_blade_node("default:acacia_bush_leaves");
  powered_tools.add_chainsaw_node("default:leaves");
  powered_tools.add_chainsaw_node("default:jungleleaves");
  powered_tools.add_chainsaw_node("default:acacia_leaves");
  powered_tools.add_chainsaw_node("default:aspen_leaves");
  -- needles
  powered_tools.add_brush_cutter_blade_node("default:pine_bush_needles");
  powered_tools.add_chainsaw_node("default:pine_needles");
  -- saplings
  powered_tools.add_brush_cutter_blade_node("default:acacia_bush_sapling"); 
  powered_tools.add_brush_cutter_blade_node("default:acacia_sapling"); 
  powered_tools.add_brush_cutter_blade_node("default:aspen_sapling"); 
  powered_tools.add_brush_cutter_blade_node("default:blueberry_bush_sapling"); 
  powered_tools.add_brush_cutter_blade_node("default:bush_sapling"); 
  powered_tools.add_brush_cutter_blade_node("default:emergent_jungle_sapling"); 
  powered_tools.add_brush_cutter_blade_node("default:junglesapling"); 
  powered_tools.add_brush_cutter_blade_node("default:pine_bush_sapling"); 
  powered_tools.add_brush_cutter_blade_node("default:pine_sapling"); 
  powered_tools.add_brush_cutter_blade_node("default:sapling"); 
  -- stems
  powered_tools.add_brush_cutter_blade_node("default:dry_shrub");
  powered_tools.add_brush_cutter_blade_node("default:bush_stem");
  powered_tools.add_brush_cutter_blade_node("default:acacia_bush_stem");
  powered_tools.add_brush_cutter_blade_node("default:pine_bush_stem");
  -- grass 1
  powered_tools.add_brush_cutter_string_node("default:junglegrasss");
  -- grass 3
  powered_tools.add_brush_cutter_string_nodes("default:fern_", 3)
  powered_tools.add_brush_cutter_string_nodes("default:marram_grass_", 3)
  -- grass 5
  powered_tools.add_brush_cutter_string_nodes("default:grass_", 5)
  powered_tools.add_brush_cutter_string_nodes("default:dry_grass_", 5)
  -- trees
  powered_tools.add_chainsaw_node("default:tree");
  powered_tools.add_chainsaw_node("default:jungletree");
  powered_tools.add_chainsaw_node("default:acacia_tree");
  powered_tools.add_chainsaw_node("default:aspen_tree");
  powered_tools.add_chainsaw_node("default:pine_tree");
end

if minetest.get_modpath("hades_core") then
  -- leaves
  powered_tools.add_brush_cutter_blade_node("hades_trees:leaves");
  powered_tools.add_brush_cutter_blade_node("hades_trees:pale_leaves");
  powered_tools.add_brush_cutter_blade_node("hades_trees:birch_leaves");
  powered_tools.add_brush_cutter_blade_node("hades_trees:jungle_leaves");
  powered_tools.add_brush_cutter_blade_node("hades_trees:cultivated_jungle_leaves");
  powered_tools.add_brush_cutter_blade_node("hades_trees:canvas_leaves");
  powered_tools.add_brush_cutter_blade_node("hades_trees:banana_leaves");
  powered_tools.add_brush_cutter_blade_node("hades_trees:charred_leaves");
  -- saplings
  powered_tools.add_brush_cutter_blade_node("hades_trees:sapling"); 
  powered_tools.add_brush_cutter_blade_node("hades_trees:pale_sapling"); 
  powered_tools.add_brush_cutter_blade_node("hades_trees:birch_sapling"); 
  powered_tools.add_brush_cutter_blade_node("hades_trees:jungle_sapling"); 
  powered_tools.add_brush_cutter_blade_node("hades_trees:cultivated_jungle_sapling"); 
  powered_tools.add_brush_cutter_blade_node("hades_trees:canvas_sapling"); 
  powered_tools.add_brush_cutter_blade_node("hades_trees:banana_sapling"); 
  -- trees
  powered_tools.add_chainsaw_node("hades_trees:tree");
  powered_tools.add_chainsaw_node("hades_trees:pale_tree");
  powered_tools.add_chainsaw_node("hades_trees:birch_tree");
  powered_tools.add_chainsaw_node("hades_trees:jungle_tree");
  powered_tools.add_chainsaw_node("hades_trees:canvas_tree");
  powered_tools.add_chainsaw_node("hades_trees:banana_tree");
  powered_tools.add_chainsaw_node("hades_trees:chared_tree");
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

