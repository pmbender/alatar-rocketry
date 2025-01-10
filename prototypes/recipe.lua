data:extend({
    {
        type = "recipe",
        name = "vac-thruster",
        enabled = true,
        ingredients =
        {
            {type = "item", name = "steel-plate", amount = 20},
            {type = "item", name = "copper-plate", amount = 20},
            {type = "item", name = "processing-unit", amount = 10},
            {type = "item", name = "electric-engine-unit", amount = 5}
        },
        energy_required = 15,
        results = {{type="item", name="vac-thruster", amount=1}}
    },
    {
        type = "recipe",
        name = "nuclear-thruster",
        enabled = true,
        ingredients =
        {
            {type = "item", name = "steel-plate", amount = 20},
            {type = "item", name = "tungsten-plate", amount = 10},
            {type = "item", name = "processing-unit", amount = 10},
            {type = "item", name = "electric-engine-unit", amount = 5},
            {type = "item", name = "uranium-235", amount = 15},
        },
        energy_required = 20,
        results = {{type="item", name="nuclear-thruster", amount=1}}
    },
})
