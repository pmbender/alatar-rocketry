local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")

data:extend({
    {
        type = "item",
        name = "vac-thruster",
        icon = "__realistic-rocketry__/graphics/icons/vac-thruster.png",
        subgroup = "space-platform",
        order = "f[vac-thruster]",
        inventory_move_sound = space_age_item_sounds.rocket_inventory_move,
        pick_sound = space_age_item_sounds.rocket_inventory_pickup,
        drop_sound = space_age_item_sounds.rocket_inventory_move,
        place_result = "vac-thruster",
        stack_size = 10,
        weight = 300*kg
    },
    {
        type = "item",
        name = "nuclear-thruster",
        icon = "__realistic-rocketry__/graphics/icons/nuclear-thruster.png",
        subgroup = "space-platform",
        order = "g[nuclear-thruster]",
        inventory_move_sound = space_age_item_sounds.rocket_inventory_move,
        pick_sound = space_age_item_sounds.rocket_inventory_pickup,
        drop_sound = space_age_item_sounds.rocket_inventory_move,
        place_result = "nuclear-thruster",
        stack_size = 10,
        weight = 400*kg
    },
})