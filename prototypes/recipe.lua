data:extend({
  {
    type = "recipe",
    name = "brick-kiln",
    enabled = false,
    ingredients = {
      {type="item", name="stone-furnace", amount=1},
      {type="item", name="stone-brick", amount=5}
    },
    results = {{type="item", name="brick-kiln", amount=1}}
  },
  {
    type = "recipe",
    name = "woodchips",
    category = "crafting",
    enabled = false,
    allow_productivity = true,
    auto_recycle = false,
    ingredients = {{type="item", name="wood", amount=1}},
    results = {{type="item", name="woodchips", amount=2}}
  },
  {
    type = "recipe",
    name = "charcoal",
    category = "kiln-smelting",
    energy_required = 6.4,
    enabled = false,
    allow_productivity = true,
    auto_recycle = false,
    ingredients = {{type="item", name="woodchips", amount=3}},
    results = {{type="item", name="charcoal", amount=1}}
  },
  {
    type = "recipe",
    name = "electric-kiln",
    energy_required = 5,
    enabled = false,
    ingredients = {
      {type="item", name="brick-kiln", amount=1},
      {type="item", name="electric-furnace", amount=1},
      {type="item", name="refined-concrete", amount=10},
      {type="item", name="advanced-circuit", amount=5}
    },
    results = {{type="item", name="electric-kiln", amount=1}}
  }
})

if settings.startup["wood-industry-resin"].value then
  data:extend({
    {
      type = "recipe",
      name = "resin",
      category = "chemistry",
      energy_required = 1,
      enabled = false,
      allow_productivity = true,
      auto_recycle = false,
      ingredients = {
        {type="item", name="woodchips", amount=5},
        {type="fluid", name="steam", amount=50, minimum_temperature=165}
      },
      results = {{type="item", name="resin", amount=1}}
    }
  })

  if mods["wood-logistics"] and settings.startup["wood-logistics-lumber"].value then
    data:extend({
      {
        type = "recipe",
        name = "manufactured-lumber",
        energy_required = 1,
        enabled = false,
        allow_productivity = true,
        auto_recycle = false,
        ingredients = {
          {type="item", name="woodchips", amount=3},
          {type="item", name="resin", amount=1}
        },
        results = {{type="item", name="lumber", amount=1}}
      }
    })
  end
end
