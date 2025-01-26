-------------------------------------------------------------------------- Technology Modifications

data.raw.technology["rocket-silo"].prerequisites =
{
	"concrete",
	"rocket-fuel",
	"space-platform-thruster",
	"logistic-robotics",
	"low-density-structure",
	"advanced-material-processing-2"
}

data.raw.technology["space-platform"].effects =
{
	{
		type = "unlock-recipe",
		recipe = "asteroid-collector"
	},
	{
		type = "unlock-recipe",
		recipe = "crusher"
	},
	{
		type = "unlock-recipe",
		recipe = "metallic-asteroid-crushing"
	},
	{
		type = "unlock-recipe",
		recipe = "carbonic-asteroid-crushing"
	},
	{
		type = "unlock-recipe",
		recipe = "oxide-asteroid-crushing"
	},
	{
		type = "unlock-recipe",
		recipe = "cargo-bay"
	},
	{
		type = "unlock-recipe",
		recipe = "ice-melting"
	},
}

data.raw.technology["space-platform-thruster"].icon = "__alatar-rocketry__/graphics/technology/space-platform-thruster.png"
data.raw.technology["space-platform-thruster"].prerequisites = {"processing-unit"}
data.raw.technology["space-platform-thruster"].effects =
{
	{
		type = "unlock-recipe",
		recipe = "thruster"
	},
}
data.raw.technology["space-platform-thruster"].unit =
{
  count = 500,
  ingredients =
  {
	{"automation-science-pack", 1},
	{"logistic-science-pack", 1},
	{"chemical-science-pack", 1},
  },
  time = 60
}

data.raw.technology["rocket-fuel"].icon = "__alatar-rocketry__/graphics/technology/rocket-fuel.png"
data.raw.technology["rocket-fuel"].effects =
{
	{
		type = "unlock-recipe",
		recipe = "thruster-fuel"
	},
	{
		type = "unlock-recipe",
		recipe = "thruster-oxidizer"
	},
	{
        type = "unlock-recipe",
        recipe = "rocket-fuel"
    }
}

data.raw.technology["rocket-fuel-productivity"].icons = util.technology_icon_constant_recipe_productivity("__alatar-rocketry__/graphics/technology/rocket-fuel-productivity.png")
data.raw.technology["rocket-fuel-productivity"].effects =
{
    {
        type = "change-recipe-productivity",
        recipe = "thruster-fuel",
        change = 0.1
    },
	{
        type = "change-recipe-productivity",
        recipe = "advanced-thruster-fuel",
        change = 0.1
    },
	{
        type = "change-recipe-productivity",
        recipe = "thruster-oxidizer",
        change = 0.1
    },
	{
        type = "change-recipe-productivity",
        recipe = "advanced-thruster-oxidizer",
        change = 0.1
    },
    {
        type = "change-recipe-productivity",
        recipe = "rocket-fuel-from-jelly",
        change = 0.1
    },
    {
        type = "change-recipe-productivity",
        recipe = "ammonia-rocket-fuel",
        change = 0.1
    }
}

data.raw.technology["plastics"].effects =
{
    {
        type = "unlock-recipe",
        recipe = "plastic-bar"
    },
	{
        type = "unlock-recipe",
        recipe = "plastic-bar-from-ammonia"
    }
}

data.raw.technology["planet-discovery-vulcanus"].prerequisites = {"orbital-mechanics"}
data.raw.technology["planet-discovery-gleba"].prerequisites = {"orbital-mechanics", "landfill"}
data.raw.technology["planet-discovery-fulgora"].prerequisites = {"orbital-mechanics", "electric-energy-accumulators"}
data.raw.technology["promethium-science-pack"].prerequisites = {"fusion-reactor", "location-discovery-aquilite-cluster"}

data.raw.technology["planet-discovery-vulcanus"].effects =
{
    {
        type = "unlock-space-location",
        space_location = "vulcanus",
        use_icon_overlay_constant = true
    },
	{
        type = "unlock-space-location",
        space_location = "vulcanus-intercept",
        use_icon_overlay_constant = true
    }
}

data.raw.technology["planet-discovery-gleba"].effects =
{
    {
        type = "unlock-space-location",
        space_location = "gleba",
        use_icon_overlay_constant = true
    },
	{
        type = "unlock-space-location",
        space_location = "gleba-intercept",
        use_icon_overlay_constant = true
    }
}

data.raw.technology["planet-discovery-fulgora"].effects =
{
    {
        type = "unlock-space-location",
        space_location = "fulgora",
        use_icon_overlay_constant = true
    },
	{
        type = "unlock-space-location",
        space_location = "fulgora-intercept",
        use_icon_overlay_constant = true
    }
}

data.raw.technology["planet-discovery-aquilo"].effects =
{
    {
        type = "unlock-space-location",
        space_location = "aquilo",
        use_icon_overlay_constant = true
    },
	{
        type = "unlock-space-location",
        space_location = "aquilo-intercept",
        use_icon_overlay_constant = true
    }
}

-------------------------------------------------------------------------- New Technology

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
	{
		type = "technology",
		name = "orbital-mechanics",
		icon = "__alatar-rocketry__/graphics/technology/orbital-mechanics.png",
		icon_size = 256,
		essential = true,
		effects =
		{
			{
				type = "unlock-space-location",
				space_location = "nauvis-intercept",
				use_icon_overlay_constant = true
			}
		},
		prerequisites = {"space-platform-thruster"},
		unit =
		{
			count = 1000,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
			},
			time = 60
		}
	},
	{
		type = "technology",
		name = "location-discovery-ferrarius-belt",
		icon = "__alatar-rocketry__/graphics/technology/ferrarius-belt.png",
		icon_size = 256,
		essential = true,
		effects =
		{
			{
				type = "unlock-space-location",
				space_location = "ferrarius-belt",
				use_icon_overlay_constant = true
			}
		},
		prerequisites = {"planet-discovery-vulcanus"},
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
		name = "location-discovery-carbolithic-belt",
		icon = "__alatar-rocketry__/graphics/technology/carbolithic-belt.png",
		icon_size = 256,
		essential = true,
		effects =
		{
			{
				type = "unlock-space-location",
				space_location = "carbolithic-belt",
				use_icon_overlay_constant = true
			},
			{
				type = "unlock-space-location",
				space_location = "carbolithic-belt-intercept",
				use_icon_overlay_constant = true
			},
		},
		prerequisites = {"planet-discovery-fulgora"},
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
		name = "location-discovery-aquilite-cluster",
		icon = "__alatar-rocketry__/graphics/technology/aquilite-cluster.png",
		icon_size = 256,
		essential = true,
		effects =
		{
			{
				type = "unlock-space-location",
				space_location = "aquilite-cluster",
				use_icon_overlay_constant = true
			}
		},
		prerequisites = {"planet-discovery-aquilo"},
		unit =
		{
			count = 3000,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1},
				{"utility-science-pack", 1},
				{"space-science-pack", 1},
				{"metallurgic-science-pack", 1},
				{"agricultural-science-pack", 1},
				{"electromagnetic-science-pack", 1}
			},
			time = 60
		}
	}
})