if data.raw.item["bob-rocket-engine"] then
	data.raw.recipe["rocket-part"].ingredients =
	{
		{ type = "item", name = "low-density-structure", amount = 10 },
		{ type = "item", name = "bob-advanced-processing-unit", amount = 10 },
		{ type = "item", name = "bob-heat-shield-tile", amount = 10 },
		{ type = "item", name = "thruster", amount = 1 },
		{ type = "fluid", name = "thruster-oxidizer", amount = 500 },
		{ type = "fluid", name = "thruster-fuel", amount = 500 }
	}
end