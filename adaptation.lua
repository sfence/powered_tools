
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
end

