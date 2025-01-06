local hit_effects = require("__base__.prototypes.entity.hit-effects")
local space_age_sounds = require ("__space-age__.prototypes.entity.sounds")

data:extend({
    {
        type = "thruster",
        name = "vac-thruster",
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        icon = "__realistic-rocketry__/graphics/icons/vac-thruster.png",
        collision_box = {{-4.7, -5}, {4.7, 0}},
        collision_mask = {layers={item=true, object=true, train=true, is_lower_object = true, is_object = true}},
        selection_box = {{-5, -5.5}, {5, 9}},
        tile_buildability_rules =
        {
            {area = {{-4.8, -5.35}, {4.8, 0.1}}, required_tiles = {layers={ground_tile=true}}, colliding_tiles = {layers={empty_space=true}}, remove_on_collision = true},
            {area = {{-4.8, 1}, {4.8, 90.3}}, required_tiles = {layers={empty_space=true}}, remove_on_collision = true},
        },
        max_health = 300,
        minable = {mining_time = 0.1, result = "vac-thruster"},
        fast_replaceable_group = "thruster",
        impact_category = "metal",
        surface_conditions =
        {
            {
                property = "pressure",
                min = 0,
                max = 0
            }
        },
        min_performance = {fluid_volume = 0.1, fluid_usage = 0.1, effectivity = 1}, 
        max_performance = {fluid_volume = 0.8, fluid_usage = 2, effectivity = 0.75},
        fuel_fluid_box =
        {
            filter = "thruster-fuel",
            production_type = "input",
            volume = 1000,
            pipe_connections =
            {
                {flow_direction = "input", direction = 0, position = { -1.5, -5}},
            }
        },
        oxidizer_fluid_box =
        {
            filter = "thruster-oxidizer",
            production_type = "input",
            volume = 1000,
            pipe_connections =
            {
                {flow_direction = "input", direction = 0, position = { 1.5, -5}},
            }
        },
        placeable_position_visualization =
        {
            filename = "__core__/graphics/cursor-boxes-32x32.png",
            priority = "extra-high-no-scale",
            size = 64,
            scale = 0.5,
            x = 3 * 64
        },
        graphics_set =
        {
            animation = util.sprite_load("__realistic-rocketry__/graphics/entity/vac-thruster/thruster",
                {
                    animation_speed = 0.5,
                    frame_count = 1,
                    scale = 0.45,
                    shift = {0,3}
                }
            ),
            integration_patch_render_layer = "floor",
            integration_patch = util.sprite_load("__realistic-rocketry__/graphics/entity/vac-thruster/thruster-bckg",
                {
                    scale = 0.45,
                    shift = {0,3}
                }
            ),
            working_visualisations =
            {
                {
                    fadeout = true,
                    animation = util.sprite_load("__realistic-rocketry__/graphics/entity/vac-thruster/thruster-light",
                        {
                            animation_speed = 0.5,
                            frame_count = 1,
                            blend_mode = "additive",
                            draw_as_glow = true,
                            scale = 0.45,
                            shift = {0,9.3}
                        }
                    ),
                },
            },
            flame_effect =
            {
                filename = "__realistic-rocketry__/graphics/entity/vac-thruster/thruster-flame.png",
                width = 700,
                height = 1517
            },
            flame_position = {0, 6.9},
            flame_half_height = 0,
            flame_effect_height = 1000 / 32,
            flame_effect_width = 700 / 64,
            flame_effect_offset = 50 / 32,
        },
        damaged_trigger_effect = hit_effects.entity(),
        open_sound = {filename = "__base__/sound/open-close/fluid-open.ogg", volume = 0.55},
        close_sound = {filename = "__base__/sound/open-close/fluid-close.ogg", volume = 0.54},
        working_sound =
        {
            main_sounds =
            {
                {
                    sound =
                    {
                        filename = "__space-age__/sound/entity/platform-thruster/thruster-burner.ogg",
                        volume = 0.3,
                        speed_smoothing_window_size = 60,
                        advanced_volume_control = {attenuation = "exponential"},
                    },
                    match_volume_to_activity = true,
                    activity_to_volume_modifiers = {multiplier = 2.0},
                    match_speed_to_activity = true,
                    activity_to_speed_modifiers = {multiplier = 1.2},
                    audible_distance_modifier = 0.8
                },
            },
            sound_accents =
            {
                {
                    sound =
                    {
                        variations = sound_variations("__space-age__/sound/entity/platform-thruster/thruster-mechanic-stop", 5, 0.5),
                        advanced_volume_control =
                        {
                            fades = { fade_in = { curve_type = "S-curve", from = { control = 0.5, volume_percentage = 0.0 }, to = { 3, 100.0 } } },
                        }
                    },
                    frame = 25,
                    audible_distance_modifier = 0.3,
                },
                {
                    sound =
                    {
                        variations = sound_variations("__space-age__/sound/entity/platform-thruster/thruster-mechanic-move", 5, 0.3),
                        advanced_volume_control =
                        {
                            fades = { fade_in = { curve_type = "S-curve", from = { control = 0.5, volume_percentage = 0.0 }, to = { 3, 100.0 } } },
                        }
                    },
                    frame = 52,
                    audible_distance_modifier = 0.3,
                },
            },
            max_sounds_per_type = 2,
            use_doppler_shift = false,
            extra_sounds_ignore_limit = true,
            activate_sound = { variations = sound_variations("__space-age__/sound/entity/platform-thruster/thruster-engine-activate", 3, 0.3) },
            deactivate_sound = { variations = sound_variations("__space-age__/sound/entity/platform-thruster/thruster-engine-deactivate", 3, 0.3) },
        },
    }
})