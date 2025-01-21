data:extend(
{
	{
		type = "technology",
		name = "vacuum-thruster",
		icon = "__alatar-rocketry__/graphics/technology/vacuum-thruster.png",
		icon_size = 256,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "vac-thruster"
			}
		},
		prerequisites = {"space-science-pack"},
		unit =
		{
			count = 1000,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"space-science-pack", 1}
			},
			time = 60
		}
	},
	{
		type = "technology",
		name = "nuclear-thruster",
		icon = "__alatar-rocketry__/graphics/technology/nuclear-thruster.png",
		icon_size = 256,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "nuclear-thruster"
			}
		},
		prerequisites = {"metallurgic-science-pack", "electromagnetic-science-pack"},
		unit =
		{
			count = 1000,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"space-science-pack", 1},
				{"metallurgic-science-pack", 1},
				{"electromagnetic-science-pack", 1}
			},
			time = 60
		}
	},
})