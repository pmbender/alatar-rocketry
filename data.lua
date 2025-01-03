require("prototypes.recipe")
require("prototypes.entity")
require("prototypes.item")

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