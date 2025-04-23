--"J-2X" (https://skfb.ly/6SqsG) by MartianDays is licensed under Creative Commons Attribution (http://creativecommons.org/licenses/by/4.0/).
--"J-2S" (https://skfb.ly/6UxUF) by MartianDays is licensed under Creative Commons Attribution (http://creativecommons.org/licenses/by/4.0/).
--"Blue Origin BE-4" (https://skfb.ly/6X9H9) by MartianDays is licensed under Creative Commons Attribution (http://creativecommons.org/licenses/by/4.0/).
--"Merlin 1D Vacuum" (https://skfb.ly/6RBww) by MartianDays is licensed under Creative Commons Attribution (http://creativecommons.org/licenses/by/4.0/).

require("prototypes.item")
require("prototypes.entity")
require("prototypes.recipe")
require("prototypes.technology")
require("prototypes.space")
local asteroid_util = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")

-------------------------------------------------------------------------- Misc Prototype Modifications

data.raw["fluid"]["thruster-fuel"].auto_barrel = true
data.raw["fluid"]["thruster-oxidizer"].auto_barrel = true
data.raw.item["rocket-fuel"].icon = "__alatar-rocketry__/graphics/icons/ammonia-fuel.png"
data.raw.item["rocket-fuel"].order = "b[chemistry]-a[ammonia-fuel]"

if data.raw.fluid["bob-ammonia"] then
	-- Nothing currently
else
	data.raw["fluid"]["ammonia"].auto_barrel = true
end

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

data.raw["rocket-silo"]["rocket-silo"].rocket_parts_required = 5

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
