
local function add_nodes(nodename, stages, add_node_func)
  if type(stages)==table then
    for _,stage in pairs(stages) do
      add_node_func(nodename..stage)
    end
  else
    for stage=1,stages do
      add_node_func(nodename..stage)
    end
  end
end

function powered_tools.add_brush_cutter_string_node(nodename)
  powered_tools.brush_cutter_string_nodes[nodename] = true
  powered_tools.brush_cutter_blade_nodes[nodename] = true
end
function powered_tools.add_brush_cutter_blade_node(nodename)
  powered_tools.brush_cutter_blade_nodes[nodename] = true
end
function powered_tools.add_chainsaw_node(nodename)
  powered_tools.chainsaw_nodes[nodename] = true
end
function powered_tools.add_algae_coloctor_node(nodename)
  powered_tools.algae_collector_nodes[nodename] = true
end

function powered_tools.add_brush_cutter_string_nodes(nodename, stages)
  add_nodes(nodename, stages, powered_tools.add_brush_cutter_string_node)
end
function powered_tools.add_brush_cutter_blade_nodes(nodename, stages)
  add_nodes(nodename, stages, powered_tools.add_brush_cutter_blade_node)
end
function powered_tools.add_chainsaw_nodes(nodename, stages)
  add_nodes(nodename, stages, powered_tools.add_chainsaw_node)
end
function powered_tools.add_algae_collector_nodes(nodename, stages)
  add_nodes(nodename, stages, powered_tools.add_algae_collector_node)
end

