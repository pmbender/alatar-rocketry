-- Set distance between Nauvis & other locations to 2.73 * approximate delta-v from low Nauvis orbit:
--Vulcanus (4) = 1000+4500 = 5500*2.73 = 15000
--Gleba (2) = 1500+4000 = 5500*2.73 = 15000
--Fulgora (0.8) = 3500+2800 = 6300*2.73 = 17200
--Aquilo (1.5) = 4500+3500 = 8000*2.73 = 21840

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

-- Remove asteroid spawn from planets
data.raw.planet["nauvis"].asteroid_spawn_definitions = nil
data.raw.planet["vulcanus"].asteroid_spawn_definitions = nil
data.raw.planet["gleba"].asteroid_spawn_definitions = nil
data.raw.planet["fulgora"].asteroid_spawn_definitions = nil
data.raw.planet["aquilo"].asteroid_spawn_definitions = nil

-- Remove asteroid spawn from space connections
data.raw["space-connection"]["nauvis-vulcanus"].asteroid_spawn_definitions = nil
data.raw["space-connection"]["nauvis-gleba"].asteroid_spawn_definitions = nil
data.raw["space-connection"]["nauvis-fulgora"].asteroid_spawn_definitions = nil
data.raw["space-connection"]["vulcanus-gleba"].asteroid_spawn_definitions = nil
data.raw["space-connection"]["gleba-fulgora"].asteroid_spawn_definitions = nil
data.raw["space-connection"]["gleba-aquilo"].asteroid_spawn_definitions = nil
data.raw["space-connection"]["fulgora-aquilo"].asteroid_spawn_definitions = nil

-- Remove unused space connections by making them target themselves
data.raw["space-connection"]["gleba-fulgora"].from = "gleba"
data.raw["space-connection"]["gleba-aquilo"].from = "gleba"
data.raw["space-connection"]["gleba-fulgora"].to = "gleba"
data.raw["space-connection"]["gleba-aquilo"].to = "gleba"
data.raw["space-connection"]["nauvis-vulcanus"].from = "nauvis"
data.raw["space-connection"]["nauvis-vulcanus"].to = "nauvis"
data.raw["space-connection"]["fulgora-aquilo"].from = "fulgora"
data.raw["space-connection"]["fulgora-aquilo"].to = "fulgora"
data.raw["space-connection"]["aquilo-solar-system-edge"].from = "aquilo"
data.raw["space-connection"]["aquilo-solar-system-edge"].to = "aquilo"

-- Update space connections to connect intercepts rather than low orbit
data.raw["space-connection"]["nauvis-gleba"].from = "nauvis-intercept"
data.raw["space-connection"]["nauvis-gleba"].to = "gleba-intercept"

data.raw["space-connection"]["vulcanus-gleba"].from = "gleba-intercept"
data.raw["space-connection"]["vulcanus-gleba"].to = "vulcanus-intercept"

data.raw["space-connection"]["nauvis-fulgora"].from = "nauvis-intercept"
data.raw["space-connection"]["nauvis-fulgora"].to = "fulgora-intercept"

-- Make misc updates to the rendering of existing space locations
data.raw.planet["vulcanus"].label_orientation = 0.45
data.raw["space-location"]["shattered-planet"].label_orientation = 0.2
data.raw["space-location"]["solar-system-edge"].draw_orbit = false

-- Set distance between Nauvis & other locations to 2.73 * approximate delta-v from low Nauvis orbit:
--Vulcanus (4) = 1000+4500 = 5500*2.73 = 15000
--Gleba (2) = 1500+4000 = 5500*2.73 = 15000
--Fulgora (0.8) = 3500+2800 = 6300*2.73 = 17200
--Aquilo (1.5) = 4500+3500 = 8000*2.73 = 21840

data.raw["space-connection"]["nauvis-fulgora"].length = 17200

PlanetsLib:update(
{
	{
		type = "planet",
		name = "vulcanus",
		orbit = 
		{
			parent = {
				type = "space-location",
				name = "star"
			},
			distance = 12,
			orientation = 0.66
		}
	},
	{
		type = "planet",
		name = "gleba",
		orbit = 
		{
			parent = {
				type = "space-location",
				name = "star"
			},
			distance = 17,
			orientation = 0.8
		}
	},
	{
		type = "planet",
		name = "nauvis",
		orbit = 
		{
			parent = {
				type = "space-location",
				name = "star"
			},
			distance = 20,
			orientation = 0.99
		}
	},
	{
		type = "planet",
		name = "fulgora",
		orbit = 
		{
			parent = {
				type = "space-location",
				name = "star"
			},
			distance = 30,
			orientation = 0.75
		}
	},
	{
		type = "planet",
		name = "aquilo",
		orbit = 
		{
			parent = {
				type = "space-location",
				name = "star"
			},
			distance = 50,
			orientation = 0.35
		}
	},
	{
		type = "space-location",
		name = "solar-system-edge",
		orbit = 
		{
			parent = {
				type = "space-location",
				name = "star"
			},
			distance = 65,
			orientation = 0.15
		}
	},
	{
		type = "space-location",
		name = "shattered-planet",
		orbit = 
		{
			parent = {
				type = "space-location",
				name = "star"
			},
			distance = 70,
			orientation = 0
		}
	},
})

PlanetsLib:extend(
{
	{
		type = "space-location",
		name = "nauvis-intercept",
		icon = "__alatar-rocketry__/graphics/icons/aquilo-transfer-point.png",
--		starmap_icon = "__alatar-rocketry__/graphics/icons/starmap-transfer-point.png",
		starmap_icon_size = 1,
		order = "a[nauvis]",
	    subgroup = "planets",
		gravity_pull = 0,
		magnitude = 1,
		draw_orbit = false,
		fly_condition = false,
		label_orientation = 0.45,
		orbit = 
		{
			parent = {
				type = "space-location",
				name = "star"
			},
			distance = 20,
			orientation = 0.97
		}
	},
	{
		type = "space-location",
		name = "gleba-intercept",
		icon = "__alatar-rocketry__/graphics/icons/aquilo-transfer-point.png",
--		starmap_icon = "__alatar-rocketry__/graphics/icons/starmap-transfer-point.png",
		starmap_icon_size = 1,
		order = "a[nauvis]",
	    subgroup = "planets",
		gravity_pull = 0,
		magnitude = 1,
		draw_orbit = false,
		fly_condition = false,
		label_orientation = 0.25,
		orbit = 
		{
			parent = {
				type = "space-location",
				name = "star"
			},
			distance = 15,
			orientation = 0.8
		}
	},
	{
		type = "space-location",
		name = "vulcanus-intercept",
		icon = "__alatar-rocketry__/graphics/icons/aquilo-transfer-point.png",
--		starmap_icon = "__alatar-rocketry__/graphics/icons/starmap-transfer-point.png",
		starmap_icon_size = 1,
		order = "a[nauvis]",
	    subgroup = "planets",
		gravity_pull = 0,
		magnitude = 1,
		draw_orbit = false,
		fly_condition = false,
		label_orientation = 0.2,
		orbit = 
		{
			parent = {
				type = "space-location",
				name = "star"
			},
			distance = 10,
			orientation = 0.66
		}
	},
	{
		type = "space-location",
		name = "fulgora-intercept",
		icon = "__alatar-rocketry__/graphics/icons/aquilo-transfer-point.png",
--		starmap_icon = "__alatar-rocketry__/graphics/icons/starmap-transfer-point.png",
		starmap_icon_size = 1,
		order = "a[nauvis]",
	    subgroup = "planets",
		gravity_pull = 0,
		magnitude = 1,
		draw_orbit = false,
		fly_condition = false,
		label_orientation = 0.75,
		orbit = 
		{
			parent = {
				type = "space-location",
				name = "star"
			},
			distance = 32,
			orientation = 0.75
		}
	},
	{
		type = "space-location",
		name = "aquilo-intercept",
		icon = "__alatar-rocketry__/graphics/icons/aquilo-transfer-point.png",
--		starmap_icon = "__alatar-rocketry__/graphics/icons/starmap-transfer-point.png",
		starmap_icon_size = 1,
		order = "a[nauvis]",
	    subgroup = "planets",
		gravity_pull = 0,
		magnitude = 1,
		draw_orbit = false,
		fly_condition = false,
		label_orientation = 0.40,
		orbit = 
		{
			parent = {
				type = "space-location",
				name = "star"
			},
			distance = 52,
			orientation = 0.35
		}
	},
	{
		type = "space-location",
		name = "ferrarius-belt",
		icon = "__alatar-rocketry__/graphics/icons/aquilo-transfer-point.png",
--		starmap_icon = "__alatar-rocketry__/graphics/icons/starmap-transfer-point.png",
		starmap_icon_size = 1,
		order = "a[nauvis]",
	    subgroup = "planets",
		gravity_pull = 0,
		magnitude = 1,
		fly_condition = false,
--		label_orientation = 0.45,
		orbit = 
		{
			parent = {
				type = "space-location",
				name = "star"
			},
			distance = 8,
			orientation = 0.6
		}
	},
	{
		type = "space-location",
		name = "carbolithic-belt",
		icon = "__alatar-rocketry__/graphics/icons/aquilo-transfer-point.png",
--		starmap_icon = "__alatar-rocketry__/graphics/icons/starmap-transfer-point.png",
		starmap_icon_size = 1,
		order = "a[nauvis]",
	    subgroup = "planets",
		gravity_pull = 0,
		magnitude = 1,
		fly_condition = false,
--		label_orientation = 0.45,
		orbit = 
		{
			parent = {
				type = "space-location",
				name = "star"
			},
			distance = 38,
			orientation = 0.59
		}
	},
	{
		type = "space-location",
		name = "carbolithic-belt-intercept",
		icon = "__alatar-rocketry__/graphics/icons/aquilo-transfer-point.png",
--		starmap_icon = "__alatar-rocketry__/graphics/icons/starmap-transfer-point.png",
		starmap_icon_size = 1,
		order = "a[nauvis]",
	    subgroup = "planets",
		gravity_pull = 0,
		magnitude = 1,
		draw_orbit = false,
		fly_condition = false,
--		label_orientation = 0.45,
		orbit = 
		{
			parent = {
				type = "space-location",
				name = "star"
			},
			distance = 40,
			orientation = 0.59
		}
	},
	{
		type = "space-location",
		name = "aquilite-cluster",
		icon = "__alatar-rocketry__/graphics/icons/aquilo-transfer-point.png",
--		starmap_icon = "__alatar-rocketry__/graphics/icons/starmap-transfer-point.png",
		starmap_icon_size = 1,
		order = "a[nauvis]",
	    subgroup = "planets",
		gravity_pull = 0,
		magnitude = 1,
		fly_condition = false,
--		label_orientation = 0.45,
		orbit = 
		{
			parent = {
				type = "space-location",
				name = "star"
			},
			distance = 55,
			orientation = 0.3
		}
	},
})

data:extend(
{
	{
		type = "space-connection",
		name = "nauvis-low-to-intercept",
		subgroup = "planet-connections",
		from = "nauvis",
		to = "nauvis-intercept",
		order = "d",
		length = 1000,
	},
	{
		type = "space-connection",
		name = "gleba-low-to-intercept",
		subgroup = "planet-connections",
		from = "gleba",
		to = "gleba-intercept",
		order = "d",
		length = 1000,
	},
	{
		type = "space-connection",
		name = "vulcanus-low-to-intercept",
		subgroup = "planet-connections",
		from = "vulcanus",
		to = "vulcanus-intercept",
		order = "d",
		length = 1000,
	},
	{
		type = "space-connection",
		name = "fulgora-low-to-intercept",
		subgroup = "planet-connections",
		from = "fulgora",
		to = "fulgora-intercept",
		order = "d",
		length = 1000,
	},
	{
		type = "space-connection",
		name = "aquilo-low-to-intercept",
		subgroup = "planet-connections",
		from = "aquilo",
		to = "aquilo-intercept",
		order = "d",
		length = 1000,
	},
	{
		type = "space-connection",
		name = "vulcanus-ferrarius",
		subgroup = "planet-connections",
		from = "vulcanus-intercept",
		to = "ferrarius-belt",
		order = "d",
		length = 1000,
	},
	{
		type = "space-connection",
		name = "carbolithic-belt-to-intercept",
		subgroup = "planet-connections",
		from = "carbolithic-belt",
		to = "carbolithic-belt-intercept",
		order = "d",
		length = 1000,
	},
	{
		type = "space-connection",
		name = "fulgora-to-carbolithic-belt",
		subgroup = "planet-connections",
		from = "fulgora-intercept",
		to = "carbolithic-belt-intercept",
		order = "d",
		length = 1000,
	},
	{
		type = "space-connection",
		name = "carbolithic-belt-to-aquilo",
		subgroup = "planet-connections",
		from = "carbolithic-belt-intercept",
		to = "aquilo-intercept",
		order = "d",
		length = 1000,
	},
	{
		type = "space-connection",
		name = "aquilo-to-aquilite-cluster",
		subgroup = "planet-connections",
		from = "aquilo-intercept",
		to = "aquilite-cluster",
		order = "d",
		length = 1000,
	},
	{
		type = "space-connection",
		name = "aquilite-cluster-to-solar-system-edge",
		subgroup = "planet-connections",
		from = "aquilite-cluster",
		to = "solar-system-edge",
		order = "d",
		length = 1000,
	},
})