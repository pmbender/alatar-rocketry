--"J-2X" (https://skfb.ly/6SqsG) by MartianDays is licensed under Creative Commons Attribution (http://creativecommons.org/licenses/by/4.0/).
--"J-2S" (https://skfb.ly/6UxUF) by MartianDays is licensed under Creative Commons Attribution (http://creativecommons.org/licenses/by/4.0/).
--"Blue Origin BE-4" (https://skfb.ly/6X9H9) by MartianDays is licensed under Creative Commons Attribution (http://creativecommons.org/licenses/by/4.0/).
--"Merlin 1D Vacuum" (https://skfb.ly/6RBww) by MartianDays is licensed under Creative Commons Attribution (http://creativecommons.org/licenses/by/4.0/).

require("prototypes.item")
require("prototypes.entity")
require("prototypes.recipe")
require("prototypes.technology")
local asteroid_util = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")

-------------------------------------------------------------------------- Misc Prototype Modifications

data.raw["fluid"]["thruster-fuel"].auto_barrel = true
data.raw["fluid"]["thruster-oxidizer"].auto_barrel = true
data.raw["fluid"]["ammonia"].auto_barrel = true
data.raw.item["rocket-fuel"].icon = "__alatar-rocketry__/graphics/icons/ammonia-fuel.png"
data.raw.item["rocket-fuel"].order = "b[chemistry]-a[ammonia-fuel]"

-------------------------------------------------------------------------- Recipe Modifications

data.raw.recipe["rocket-part"].ingredients =
{
    {type = "item", name = "processing-unit", amount = 1},
    {type = "item", name = "low-density-structure", amount = 1},
    {type = "item", name = "thruster", amount = 1},
    {type = "fluid", name = "thruster-oxidizer", amount = 100},
    {type = "fluid", name = "thruster-fuel", amount = 100}
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

data.raw.recipe["thruster-oxidizer"].icon = "__alatar-rocketry__/graphics/icons/thruster-oxidizer.png"
data.raw.recipe["thruster-oxidizer"].surface_conditions =
{
	{property = "gravity", min = 0, max = 100},
	{property = "pressure", min = 300, max = 4000}
}
data.raw.recipe["thruster-oxidizer"].ingredients =
{
    {type = "fluid", name = "water", amount = 75}
}
data.raw.recipe["thruster-oxidizer"].results = 
{
	{type = "fluid", name = "thruster-oxidizer", amount = 75},
	{type = "fluid", name = "ammonia", amount = 20}
}

data.raw.recipe["advanced-thruster-oxidizer"].category = "cryogenics"
data.raw.recipe["advanced-thruster-oxidizer"].energy_required = 60
data.raw.recipe["advanced-thruster-oxidizer"].icon = "__alatar-rocketry__/graphics/icons/advanced-thruster-oxidizer.png"
data.raw.recipe["advanced-thruster-oxidizer"].results = {{type = "fluid", name = "thruster-oxidizer", amount = 150}}
data.raw.recipe["advanced-thruster-oxidizer"].ingredients = nil
data.raw.recipe["advanced-thruster-oxidizer"].surface_conditions =
{
	{property = "gravity", min = 0, max = 100},
	{property = "pressure", min = 300, max = 4000}
}

data.raw.recipe["thruster-fuel"].category = "oil-processing"
data.raw.recipe["thruster-fuel"].surface_conditions = {{property = "gravity", min = 0, max = 100}}
data.raw.recipe["thruster-fuel"].ingredients =
{
    {type = "fluid", name = "light-oil", amount = 50},
    {type = "fluid", name = "steam", amount = 25}
}

data.raw.recipe["advanced-thruster-fuel"].icon = "__alatar-rocketry__/graphics/icons/advanced-thruster-fuel.png"
data.raw.recipe["advanced-thruster-fuel"].surface_conditions = {{property = "gravity", min = 0, max = 100}}
data.raw.recipe["advanced-thruster-fuel"].results = {{type = "fluid", name = "thruster-fuel", amount = 150}}
data.raw.recipe["advanced-thruster-fuel"].ingredients =
{
    {type = "item", name = "solid-fuel", amount = 2},
    {type = "item", name = "calcite", amount = 1},
    {type = "fluid", name = "steam", amount = 25}
}

data.raw.recipe["rocket-fuel"].ingredients =
{
    {type = "item", name = "solid-fuel", amount = 10},
    {type = "fluid", name = "ammonia", amount = 20}
}
	
data.raw.recipe["rocket-fuel"].crafting_machine_tint =
{
    primary = {r = 0.596, g = 0.764, b = 0.780, a = 1.000},
    secondary = {r = 0.551, g = 0.762, b = 0.844, a = 1.000},
    tertiary = {r = 0.596, g = 0.773, b = 0.895, a = 1.000},
    quaternary = {r = 0.290, g = 0.734, b = 1, a = 1.000},
}

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

-------------------------------------------------------------------------- Rocket Silo Modifications

data.raw["rocket-silo"]["rocket-silo"].fluid_boxes =
{
    {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        pipe_connections = {{ flow_direction = "input", direction = 8, position = {x = 2, y = 4.199} }},
        secondary_draw_orders = { north = -1 },
        volume = 100
    },
    {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        pipe_connections = {{ flow_direction = "input", direction = 8, position = {x = -2, y = 4.199} }},
        secondary_draw_orders = { north = -1 },
        volume = 100
    }
}

-------------------------------------------------------------------------- Thruster Modifications
data.raw.item["thruster"].icon = "__alatar-rocketry__/graphics/icons/sl-thruster.png"

data.raw["thruster"]["thruster"].icon = "__alatar-rocketry__/graphics/icons/sl-thruster.png"
data.raw["thruster"]["thruster"].collision_box = {{-2.5, -2.2}, {2.5, 2.2}}
data.raw["thruster"]["thruster"].selection_box = {{-3, -2.5}, {3, 6}}
data.raw["thruster"]["thruster"].plumes = nil

data.raw["thruster"]["thruster"].tile_buildability_rules =
{
    {area = {{-2.6, -2.3}, {2.6, 2.3}}, required_tiles = {layers={ground_tile=true}}, colliding_tiles = {layers={empty_space=true}}, remove_on_collision = true},
    {area = {{-2.6, 2.7}, {2.6, 90.3}}, required_tiles = {layers={empty_space=true}}, remove_on_collision = true},
}

data.raw["thruster"]["thruster"].fuel_fluid_box =
{
    filter = "thruster-fuel",
    production_type = "input",
    volume = 1000,
    pipe_connections =
    {
        {flow_direction = "input", direction = 0, position = {-1, -2}}
    }
}

data.raw["thruster"]["thruster"].oxidizer_fluid_box =
{
    filter = "thruster-oxidizer",
    production_type = "input",
    volume = 1000,
    pipe_connections =
    {
        {flow_direction = "input", direction = 0, position = { 1, -2}}
    }
}

data.raw["thruster"]["thruster"].graphics_set =
{
    animation = util.sprite_load("__alatar-rocketry__/graphics/entity/sl-thruster/thruster",
        {
            animation_speed = 0.5,
            frame_count = 1,
            scale = 0.4,
            shift = {0,3}
        }
    ),
    integration_patch_render_layer = "floor",
    integration_patch = util.sprite_load("__alatar-rocketry__/graphics/entity/sl-thruster/thruster-bckg",
        {
            scale = 0.4,
            shift = {0,3}
        }
    ),
    working_visualisations =
    {
        {
            fadeout = true,
            animation = util.sprite_load("__alatar-rocketry__/graphics/entity/sl-thruster/thruster-light",
                {
                    animation_speed = 0.5,
                    frame_count = 1,
                    blend_mode = "additive",
                    draw_as_glow = true,
                    scale = 0.4,
                    shift = {0,6.79}
                }
            ),
        },
    },
    flame_effect =
    {
        filename = "__alatar-rocketry__/graphics/entity/sl-thruster/thruster-flame.png",
        width = 445,
        height = 964
    },
    flame_position = {0, 5.5},
    flame_half_height = 0,
    flame_effect_height = 1000 / 32,
    flame_effect_width = 445 / 64,
    flame_effect_offset = 50 / 32,
}

-------------------------------------------------------------------------- Planet Modifications

-- Set gravity-pull of all planets to their surface gravity
data.raw.planet["vulcanus"].gravity_pull = 40
data.raw.planet["gleba"].gravity_pull = 20
data.raw.planet["fulgora"].gravity_pull = 8
data.raw.planet["aquilo"].gravity_pull = 15

-- Remove planet-influenced asteroid spawn from space connections
data.raw.planet["nauvis"].asteroid_spawn_influence = 0
data.raw.planet["vulcanus"].asteroid_spawn_influence = 0
data.raw.planet["gleba"].asteroid_spawn_influence = 0
data.raw.planet["fulgora"].asteroid_spawn_influence = 0
data.raw.planet["aquilo"].asteroid_spawn_influence = 0

data.raw.planet["nauvis"].asteroid_spawn_definitions = nil
data.raw.planet["vulcanus"].aasteroid_spawn_definitions = nil
data.raw.planet["gleba"].asteroid_spawn_definitions = nil
data.raw.planet["fulgora"].asteroid_spawn_definitions = nil
data.raw.planet["aquilo"].asteroid_spawn_definitions = nil

data.raw["space-connection"]["nauvis-vulcanus"].asteroid_spawn_definitions = nil
data.raw["space-connection"]["nauvis-gleba"].asteroid_spawn_definitions = nil
data.raw["space-connection"]["nauvis-fulgora"].asteroid_spawn_definitions = nil
data.raw["space-connection"]["vulcanus-gleba"].asteroid_spawn_definitions = nil
data.raw["space-connection"]["gleba-fulgora"].asteroid_spawn_definitions = nil
data.raw["space-connection"]["gleba-aquilo"].asteroid_spawn_definitions = nil
data.raw["space-connection"]["fulgora-aquilo"].asteroid_spawn_definitions = nil

-- Set distance between Nauvis & other locations to 2.73 * approximate delta-v from low Nauvis orbit:
--Vulcanus (4) = 1000+4500 = 5500*2.73 = 15000
--Gleba (2) = 1500+4000 = 5500*2.73 = 15000
--Fulgora (0.8) = 3500+2800 = 6300*2.73 = 17200
--Aquilo (1.5) = 4500+3500 = 8000*2.73 = 21840