
local adaptation = powered_tools.adaptation

local N = adaptation_lib.get_item_name

adaptation_lib.check_keys_aviable("[powered_tools] Crafting: ", adaptation, {"steel_bar", "steel_strip", "electric_motor", "battery"})

minetest.register_craft({
    output = "powered_tools:brush_cutter_blade",
    recipe = {
      {"","basic_materials:steel_strip",""},
      {"","basic_materials:steel_strip",""},
      {"basic_materials:steel_strip","","basic_materials:steel_strip"},
    },
  })
minetest.register_craft({
    output = "powered_tools:brush_cutter_blade",
    recipe = {
      {"powered_tools:brush_cutter_blade_broken","basic_materials:steel_strip"},
    },
  })
minetest.register_craft({
    output = "powered_tools:brush_cutter_string",
    recipe = {
      {"","basic_materials:steel_wire",""},
      {"","basic_materials:steel_strip",""},
      {"basic_materials:steel_wire","","basic_materials:steel_wire"},
    },
    replacements = {
      {"basic_materials:steel_wire","basic_materials:empty_spool"},
    },
  })
minetest.register_craft({
    output = "powered_tools:brush_cutter_string",
    recipe = {
      {"powered_tools:brush_cutter_string_broken","basic_materials:steel_wire"},
    },
    replacements = {
      {"basic_materials:steel_wire","basic_materials:empty_spool"},
    },
  })

minetest.register_craft({
    output = "powered_tools:chainsaw_chain",
    recipe = {
      {"","basic_materials:steel_strip",""},
      {"basic_materials:steel_strip","","basic_materials:steel_strip"},
      {"","basic_materials:steel_strip",""},
    },
  })

minetest.register_craft({
    output = "powered_tools:chainsaw_chain",
    recipe = {
      {"powered_tools:chainsaw_chain_broken","basic_materials:steel_strip"},
    },
  })

minetest.register_craft({
    output = "powered_tools:brush_cutter_electric_body",
    recipe = {
      {N(adaptation.battery),N(adaptation.electric_motor),"basic_materials:plastic_sheet"},
      {N(adaptation.battery),N(adaptation.steel_bar),"basic_materials:gear_steel"},
      {"basic_materials:copper_wire",N(adaptation.steel_bar),"basic_materials:gear_steel"},
    },
    replacements = {
      {"basic_materials:copper_wire","basic_materials:empty_spool"},
    },
  })

minetest.register_craft({
    output = "powered_tools:chainsaw_electric_body",
    recipe = {
      {N(adaptation.battery),N(adaptation.steel_strip),"basic_materials:plastic_sheet"},
      {N(adaptation.battery),N(adaptation.steel_strip),"basic_materials:gear_steel"},
      {"basic_materials:copper_wire",N(adaptation.electric_motor),"basic_materials:gear_steel"},
    },
    replacements = {
      {"basic_materials:copper_wire","basic_materials:empty_spool"},
    },
  })

minetest.register_craft({
    output = "powered_tools:algae_collector_electric",
    recipe = {
      {N(adaptation.battery),N(adaptation.steel_strip),"basic_materials:plastic_sheet"},
      {N(adaptation.battery),N(adaptation.steel_strip),"pipeworks:pump_off"},
      {"basic_materials:copper_wire",N(adaptation.electric_motor),"basic_materials:gear_steel"},
    },
    replacements = {
      {"basic_materials:copper_wire","basic_materials:empty_spool"},
    },
  })

minetest.register_craft({
    output = "powered_tools:crumbly_exchanger_electric",
    recipe = {
      {N(adaptation.battery),N(adaptation.steel_strip),"basic_materials:plastic_sheet"},
      {N(adaptation.battery),N(adaptation.steel_strip),"pipeworks:sand_tube_1"},
      {"basic_materials:copper_wire",N(adaptation.electric_motor),"basic_materials:gear_steel"},
    },
    replacements = {
      {"basic_materials:copper_wire","basic_materials:empty_spool"},
    },
  })

if minetest.get_modpath("power_generators") then
  if power_generators.settings.enable_petrol_tools then
    minetest.register_craft({
        output = "powered_tools:brush_cutter_body",
        recipe = {
          {"power_generators:combustion_engine_fuel_tank","power_generators:combustion_engine_two_cylinders", "basic_materials:plastic_sheet"},
          {"",N(adaptation.steel_bar),"basic_materials:gear_steel"},
          {"",N(adaptation.steel_bar),"basic_materials:gear_steel"},
        },
      })
    minetest.register_craft({
        output = "powered_tools:chainsaw_body",
        recipe = {
          {"",N(adaptation.steel_strip),"basic_materials:plastic_sheet"},
          {"",N(adaptation.steel_strip),"basic_materials:gear_steel"},
          {"power_generators:combustion_engine_fuel_tank","power_generators:combustion_engine_two_cylinders","basic_materials:gear_steel"},
        },
      })
    minetest.register_craft({
        output = "powered_tools:algae_collector_off",
        recipe = {
          {"",N(adaptation.steel_strip),"basic_materials:plastic_sheet"},
          {"",N(adaptation.steel_strip),"pipeworks:pump_off"},
          {"power_generators:combustion_engine_fuel_tank","power_generators:combustion_engine_two_cylinders","basic_materials:gear_steel"},
        },
      })
    minetest.register_craft({
        output = "powered_tools:crumbly_exchanger_off",
        recipe = {
          {"",N(adaptation.steel_strip),"basic_materials:plastic_sheet"},
          {"",N(adaptation.steel_strip),"pipeworks:sand_tube_1"},
          {"power_generators:combustion_engine_fuel_tank","power_generators:combustion_engine_two_cylinders","basic_materials:gear_steel"},
        },
      })
  end
end

