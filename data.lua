-------------------------------------------------------------------------- Recipe Modifications

data.raw.recipe["rocket-part"].ingredients =
{
  {type = "item", name = "processing-unit", amount = 1},
  {type = "item", name = "low-density-structure", amount = 1},
  {type = "item", name = "thruster", amount = 1},
  {type = "fluid", name = "thruster-oxidizer", amount = 100},
  {type = "fluid", name = "thruster-fuel", amount = 100}
}

data.raw.recipe["thruster-oxidizer"].surface_conditions = 
{
    {property = "gravity", min = 0, max = 1000}
}

data.raw.recipe["thruster-fuel"].surface_conditions = 
{
    {property = "gravity", min = 0, max = 1000}
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

-------------------------------------------------------------------------- Misc Prototype Modifications

data.raw["fluid"]["thruster-fuel"].auto_barrel = true
data.raw["fluid"]["thruster-oxidizer"].auto_barrel = true

-------------------------------------------------------------------------- New Entities

local vacThruster = table.deepcopy(data.raw["item"]["thruster"])

vacThruster.name = "vac-thruster"
vacThruster.icon = "__realistic-rocketry__/graphics/icons/vac-thruster.png"
vacThruster.minable = {mining_time = 0.1, result = "vac-thruster"}
vacThruster.max_performance = {fluid_volume = 0.8, fluid_usage = 2, effectivity = 0.75}

vacThruster.graphics_set =
{
  animation = util.sprite_load("__realistic-rocketry__/graphics/entity/vac-thruster/thruster",
              {
                animation_speed = 0.5,
                frame_count = 64,
                scale = 0.5,
                shift = {0,3}
              }),

  integration_patch_render_layer = "floor",
  integration_patch = util.sprite_load("__realistic-rocketry__/graphics/entity/vac-thruster/thruster-bckg",
                      {
                        scale = 0.5,
                        shift = {0,3}
                      }),

  working_visualisations =
  {
    {
      always_draw = true,
      name = "pipe-1",
      enabled_by_name = true,
      animation =
      {
        filename = "__realistic-rocketry__/graphics/entity/vac-thruster/thruster-pipe-connection-1.png",
        width = 384,
        height = 832,
        shift = util.by_pixel(0, 95),
        scale = 0.5
      }
    },
    {
      always_draw = true,
      name = "pipe-2",
      enabled_by_name = true,
      animation =
      {
        filename = "__realistic-rocketry__/graphics/entity/vac-thruster/thruster-pipe-connection-2.png",
        width = 384,
        height = 832,
        shift = util.by_pixel(0, 96),
        scale = 0.5
      }
    },
    {
      always_draw = true,
      name = "pipe-3",
      enabled_by_name = true,
      animation =
      {
        filename = "__realistic-rocketry__/graphics/entity/vac-thruster/thruster-pipe-connection-3.png",
        width = 384,
        height = 832,
        shift = util.by_pixel(0, 96),
        scale = 0.5
      }
    },
    {
      always_draw = true,
      name = "pipe-4",
      enabled_by_name = true,
      animation =
      {
        filename = "__realistic-rocketry__/graphics/entity/vac-thruster/thruster-pipe-connection-4.png",
        width = 384,
        height = 832,
        shift = util.by_pixel(0, 95),
        scale = 0.5
      }
    },
    {
      -- effect = "flicker",
      fadeout = true,
      animation = util.sprite_load(
	    "__realistic-rocketry__/graphics/entity/vac-thruster/thruster-light",
        {
          animation_speed = 0.5,
          frame_count = 64,
          blend_mode = "additive",
          draw_as_glow = true,
          scale = 0.5,
          shift = {0,3}
        }
      ),
    },
  },
  flame_effect =
  {
    filename = "__realistic-rocketry__/graphics/entity/vac-thruster/thruster-flame.png",
    width = 384,
    height = 832
  },
  flame_position = {0, 5.5},
  flame_half_height = 0,
  flame_effect_height = 1000 / 32,
  flame_effect_width = 384 / 64,
  flame_effect_offset = 50 / 32,
}

local recipe = {
  type = "recipe",
  name = "vac-thruster",
  enabled = true,
  energy_required = 10,
  ingredients = {
    {type = "item", name = "tungsten-plate", amount = 10},
    {type = "item", name = "processing-unit", amount = 10},
    {type = "item", name = "electric-engine-unit", amount = 5}
  },
  results = {{type = "item", name = "vac-thruster", amount = 1}}
}

data:extend{vacThruster, recipe}

local vacThrusterEntity = table.deepcopy(data.raw["thruster"]["thruster"])

vacThrusterEntity.name = "vac-thruster"

data:extend{vacThrusterEntity}