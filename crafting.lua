
local materials = {
  battery = "default:mese_crystal",
  steel = "default:iron_ingot",
  steel_bar = "basic_materials:steel_bar",
  steel_strip = "basic_materials:steel_strip",
  
  electric_motor = "basic_materials:motor",
}

if minetest.get_modpath("hades_core") then
  materials.battery = "default:mese_crystal"
end

if minetest.get_modpath("technic") then
  materials.battery = "technic:battery"
end

if minetest.get_modpath("hades_technic") then
  materials.battery = "hades_technic:battery_lithium"
end

if minetest.get_modpath("power_generators") then
  materials.electric_motor = "power_generators:electric_engine_p6"
end

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
      {materials.battery,materials.electric_motor,"basic_materials:plastic_sheet"},
      {materials.battery,materials.steel_bar,"basic_materials:gear_steel"},
      {"basic_materials:copper_wire",materials.steel_bar,"basic_materials:gear_steel"},
    },
    replacements = {
      {"basic_materials:copper_wire","basic_materials:empty_spool"},
    },
  })

minetest.register_craft({
    output = "powered_tools:chainsaw_electric_body",
    recipe = {
      {materials.battery,materials.steel_strip,"basic_materials:plastic_sheet"},
      {materials.battery,materials.steel_strip,"basic_materials:gear_steel"},
      {"basic_materials:copper_wire",materials.electric_motor,"basic_materials:gear_steel"},
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
          {"",materials.steel_bar,"basic_materials:gear_steel"},
          {"",materials.steel_bar,"basic_materials:gear_steel"},
        },
      })
    minetest.register_craft({
        output = "powered_tools:chainsaw_body",
        recipe = {
          {"",materials.steel_strip,"basic_materials:plastic_sheet"},
          {"",materials.steel_strip,"basic_materials:gear_steel"},
          {"power_generators:combustion_engine_fuel_tank","power_generators:combustion_engine_two_cylinders","basic_materials:gear_steel"},
        },
      })
  end
end

