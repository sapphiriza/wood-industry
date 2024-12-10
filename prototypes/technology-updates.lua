local ftech = require("__fdsl__.lib.technology")

-------------------------------------------------------------------------- Technology changes

ftech.add_unlock("advanced-material-processing-2", "electric-kiln")

if settings.startup["wood-industry-carbon-steel"].value then
  ftech.add_prereq("steel-processing", "wood-pyrolysis")
end

if settings.startup["wood-industry-resin"].value then
  ftech.add_prereq("plastics", "resin-processing")
  if mods["aai-industry"] then
    ftech.add_prereq("resin-processing", "steam-power")
  end
  if mods["wood-logistics"] and settings.startup["wood-logistics-lumber"].value then
    ftech.add_unlock("resin-processing", "manufactured-lumber")
  end
end

if settings.startup["wood-industry-carbon-military"].value then
  ftech.add_unlock("sulfur-processing", "carbon")
  if mods["wood-military"] and settings.startup["wood-military-hard-mode"].value then
    ftech.add_prereq("military-2", "sulfur-processing")
  end

  ftech.remove_unlock("tungsten-carbide", "carbon")
end
