-------------------------------------------------------------------------- UNIVERSAL CHANGES
-------------------------------------------------------------------------- Existing Recipe Modifications

data.raw.recipe["thruster-oxidizer"].surface_conditions = nil
data.raw.recipe["thruster-fuel"].surface_conditions = nil
data.raw.recipe["thruster-fuel"].category = "oil-processing"

data.raw.recipe["thruster-fuel"].ingredients =
{
	{type = "fluid", name = "light-oil", amount = 75},
	{type = "fluid", name = "steam", amount = 25}
}

-------------------------------------------------------------------------- New Recipes

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
})

if data.raw.fluid["bob-ammonia"] and data.raw.fluid["bob-oxygen"] and data.raw.fluid["bob-dinitrogen-tetroxide"] then

-------------------------------------------------------------------------- WITH BOBMODS
-------------------------------------------------------------------------- Existing Recipe Modifications
	data.raw.recipe["thruster-oxidizer"].ingredients =
	{
		{type = "fluid", name = "bob-oxygen", amount = 75}
	}
	
	data.raw.recipe["metallic-asteroid-crushing"].results =
    {
		{type = "item", name = "iron-ore", amount = 20},
		{type = "item", name = "bob-nickel-ore", amount = 5},
		{type = "item", name = "stone", amount = 2},
		{type = "item", name = "metallic-asteroid-chunk", amount = 1, probability = 0.2}
    }
	
	data.raw.recipe["carbonic-asteroid-crushing"].results =
    {
		{type = "item", name = "bob-carbon", amount = 10},
		{type = "item", name = "stone", amount = 10},
		{type = "item", name = "ice", amount = 2},
		{type = "item", name = "carbonic-asteroid-chunk", amount = 1, probability = 0.2}
    }
		
	data.raw.recipe["oxide-asteroid-crushing"].results =
    {
		{type = "item", name = "ice", amount = 10},
		{type = "fluid", name = "bob-carbon-dioxide", amount = 40},
		{type = "fluid", name = "bob-ammonia", amount = 40},
		{type = "fluid", name = "bob-hydrogen-peroxide", amount = 8},
		{type = "item", name = "oxide-asteroid-chunk", amount = 1, probability = 0.2}	
    }
	
	data.raw.recipe["advanced-metallic-asteroid-crushing"].results =
    {
		{type = "item", name = "iron-ore", amount = 10},
		{type = "item", name = "bob-nickel-ore", amount = 4},
		{type = "item", name = "copper-ore", amount = 4},
		{type = "item", name = "bob-tin-ore", amount = 2},
		{type = "item", name = "stone", amount = 2},
		{type = "item", name = "metallic-asteroid-chunk", amount = 1, probability = 0.05}
    }
	
	data.raw.recipe["advanced-carbonic-asteroid-crushing"].results =
    {
		{type = "item", name = "bob-carbon", amount = 5},
		{type = "item", name = "sulfur", amount = 2},
		{type = "item", name = "stone", amount = 5},
		{type = "item", name = "ice", amount = 2},
		{type = "item", name = "bob-bauxite-ore", amount = 2},
		{type = "item", name = "carbonic-asteroid-chunk", amount = 1, probability = 0.05}
    }
	
	data.raw.recipe["advanced-oxide-asteroid-crushing"].results =
    {
		{type = "item", name = "ice", amount = 5},
		{type = "fluid", name = "bob-carbon-dioxide", amount = 20},
		{type = "fluid", name = "bob-ammonia", amount = 20},
		{type = "fluid", name = "bob-hydrogen-peroxide", amount = 4},
		{type = "item", name = "calcite", amount = 2},
		{type = "item", name = "oxide-asteroid-chunk", amount = 1, probability = 0.05}
    }
	
	data.raw.recipe["space-science-pack"].ingredients =
    {
		{type = "item", name = "bob-nickel-plate", amount = 2},
		{type = "item", name = "bob-carbon", amount = 1},
		{type = "fluid", name = "bob-hydrogen", amount = 20}
    }
	
	data.raw.recipe["space-science-pack"].category = "crafting-with-fluid"
-------------------------------------------------------------------------- New Recipes
	data:extend({
		{
			type = "recipe",
			name = "hyperglolic-propellant",
			category = "chemistry",
			subgroup="space-processing",
			order = "d[thruster-hyperglolic-propellant]",
			icons = 
			{
				{
					icon = "__space-age__/graphics/icons/fluid/thruster-fuel.png",
					scale = 0.4,
					shift = {-8,-8}
				},
				{
					icon = "__space-age__/graphics/icons/fluid/thruster-oxidizer.png",
					scale = 0.4,
					shift = {8,-8}
				},
				{
					icon = "__bobrevamp__/graphics/icons/hydrazine.png",
					scale = 0.2,
					shift = {-12,12}
				},
				{
					icon = "__bobrevamp__/graphics/icons/dinitrogen-tetroxide.png",
					scale = 0.2,
					shift = {12,12}
				},
			},
			auto_recycle = false,
			enabled = false,
			ingredients =
			{
				{type = "fluid", name = "bob-hydrazine", amount = 75},
				{type = "fluid", name = "bob-dinitrogen-tetroxide", amount = 75}
			},
			energy_required = 2,
			results = 
			{
				{type = "fluid", name = "thruster-fuel", amount = 75},
				{type = "fluid", name = "thruster-oxidizer", amount = 75}
			},
			allow_productivity = true,
			show_amount_in_title = false,
			always_show_products = true,
		},
	})
else
-------------------------------------------------------------------------- WITHOUT BOBMODS
	data.raw.recipe["thruster-oxidizer"].icon = "__alatar-rocketry__/graphics/icons/thruster-oxidizer.png"
	
	data.raw.recipe["thruster-oxidizer"].results = 
	{
		{type = "fluid", name = "thruster-oxidizer", amount = 75},
		{type = "fluid", name = "ammonia", amount = 20}
	}
	
	data.raw.recipe["thruster-oxidizer"].ingredients =
	{
		{type = "fluid", name = "water", amount = 75}
	}
	
	data.raw.recipe["rocket-fuel"].ingredients =
	{
		{type = "item", name = "solid-fuel", amount = 10},
		{type = "fluid", name = "ammonia", amount = 20}
	}
	
	data.raw.recipe["rocket-part"].ingredients =
	{
		{type = "item", name = "advanced-circuit", amount = 10},
		{type = "item", name = "low-density-structure", amount = 10},
		{type = "item", name = "thruster", amount = 1},
		{type = "fluid", name = "thruster-oxidizer", amount = 500},
		{type = "fluid", name = "thruster-fuel", amount = 500}
	}
	
	data.raw.recipe["nuclear-fuel"].category = "crafting-with-fluid"
	data.raw.recipe["nuclear-fuel"].ingredients =
	{
		{type = "item", name = "uranium-235", amount = 1},
		{type = "fluid", name = "light-oil", amount = 20}
	}

	data.raw.recipe["ammonia-rocket-fuel"].icon = "__alatar-rocketry__/graphics/icons/ammonia-rocket-fuel.png"
	data.raw.recipe["ammonia-rocket-fuel"].results = 
	{
		{type="fluid", name="thruster-fuel", amount=75}
	}

	data.raw.recipe["rocket-fuel-from-jelly"].icon = "__alatar-rocketry__/graphics/icons/rocket-fuel-from-jelly.png"
	data.raw.recipe["rocket-fuel-from-jelly"].results = 
	{
		{type="fluid", name="thruster-fuel", amount=75}
	}

	data.raw.recipe["advanced-thruster-oxidizer"].category = "cryogenics"
	data.raw.recipe["advanced-thruster-oxidizer"].energy_required = 60
	data.raw.recipe["advanced-thruster-oxidizer"].icon = "__alatar-rocketry__/graphics/icons/advanced-thruster-oxidizer.png"
	data.raw.recipe["advanced-thruster-oxidizer"].results = {{type = "fluid", name = "thruster-oxidizer", amount = 250}}
	data.raw.recipe["advanced-thruster-oxidizer"].ingredients = nil
	data.raw.recipe["advanced-thruster-oxidizer"].surface_conditions = nil

	data.raw.recipe["advanced-thruster-fuel"].icon = "__alatar-rocketry__/graphics/icons/advanced-thruster-fuel.png"
	data.raw.recipe["advanced-thruster-fuel"].surface_conditions = {{property = "gravity", min = 0, max = 100}}
	data.raw.recipe["advanced-thruster-fuel"].results = {{type = "fluid", name = "thruster-fuel", amount = 150}}
	data.raw.recipe["advanced-thruster-fuel"].ingredients =
	{
		{type = "item", name = "solid-fuel", amount = 2},
		{type = "item", name = "calcite", amount = 1},
		{type = "fluid", name = "steam", amount = 25}
	}
		
	data.raw.recipe["rocket-fuel"].crafting_machine_tint =
	{
		primary = {r = 0.596, g = 0.764, b = 0.780, a = 1.000},
		secondary = {r = 0.551, g = 0.762, b = 0.844, a = 1.000},
		tertiary = {r = 0.596, g = 0.773, b = 0.895, a = 1.000},
		quaternary = {r = 0.290, g = 0.734, b = 1, a = 1.000},
	}
	
	data:extend({
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
end
