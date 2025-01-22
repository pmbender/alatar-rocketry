data:extend({
    {
        type = "recipe",
        name = "vac-thruster",
        enabled = false,
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
        enabled = false,
        ingredients =
        {
            {type = "item", name = "steel-plate", amount = 20},
            {type = "item", name = "tungsten-plate", amount = 10},
			{type = "item", name = "superconductor", amount = 10},
            {type = "item", name = "processing-unit", amount = 10},
            {type = "item", name = "electric-engine-unit", amount = 5},
            {type = "item", name = "uranium-235", amount = 15},
        },
        energy_required = 20,
        results = {{type="item", name="nuclear-thruster", amount=1}}
    },
	{
		type = "recipe",
		name = "plastic-bar-from-ammonia",
		category = "chemistry",
		energy_required = 1,
		enabled = false,
		ingredients =
		{
		  {type = "fluid", name = "petroleum-gas", amount = 20},
		  {type = "fluid", name = "ammonia", amount = 20}
		},
		results =
		{
		  {type = "item", name = "plastic-bar", amount = 2}
		},
		allow_productivity = true,
		icon = "__alatar-rocketry__/graphics/icons/plastic-bar-from-ammonia.png",
		crafting_machine_tint =
		{
		  primary = {r = 1.000, g = 1.000, b = 1.000, a = 1.000}, -- #fefeffff
		  secondary = {r = 0.771, g = 0.771, b = 0.771, a = 1.000}, -- #c4c4c4ff
		  tertiary = {r = 0.768, g = 0.665, b = 0.762, a = 1.000}, -- #c3a9c2ff
		  quaternary = {r = 0.000, g = 0.000, b = 0.000, a = 1.000}, -- #000000ff
		}
	},
})
