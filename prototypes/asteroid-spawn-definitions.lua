local asteroid_functions = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")

-- asteroid_types in order are: {"metallic", "carbonic", "oxide", "promethium"}
asteroid_functions.ferrarius_ratio    = {5, 1, 0, 0}
asteroid_functions.carbolithic_ratio  = {1, 5, 1, 0}
asteroid_functions.aquilite_ratio     = {1, 2, 20, 0}

asteroid_functions.ferrarius_chunks   = 0.0200
asteroid_functions.ferrarius_medium   = 0.0075
asteroid_functions.ferrarius_big      = 0.0025

asteroid_functions.carbolithic_chunks = 0.0200
asteroid_functions.carbolithic_medium = 0.0075
asteroid_functions.carbolithic_big    = 0.0025

asteroid_functions.aquilite_chunks    = 0.0200
asteroid_functions.aquilite_medium    = 0.0075
asteroid_functions.aquilite_big       = 0.0025

asteroid_functions.aquilo_medium     = 0.0025

asteroid_functions.aquilite_cluster_solar_system_edge = asteroid_functions.aquilo_solar_system_edge

asteroid_functions.vulcanus_ferrarius =
{
	probability_on_range_chunk =
	{
		{position = 0.1, probability = asteroid_functions.vulcanus_chunks, angle_when_stopped = asteroid_functions.chunk_angle},
		{position = 0.9, probability = asteroid_functions.ferrarius_chunks, angle_when_stopped = asteroid_functions.chunk_angle}
	},
	probability_on_range_medium =
	{
		{position = 0.1, probability = 0, angle_when_stopped = asteroid_functions.medium_angle},
		{position = 0.2, probability = asteroid_functions.ferrarius_medium, angle_when_stopped = asteroid_functions.medium_angle},
		{position = 0.9, probability = asteroid_functions.ferrarius_medium, angle_when_stopped = asteroid_functions.medium_angle}
	},
	  probability_on_range_big =
	{
		{position = 0.1, probability = 0, angle_when_stopped = asteroid_functions.big_angle},
		{position = 0.9, probability = asteroid_functions.ferrarius_big, angle_when_stopped = asteroid_functions.big_angle}
	},
	type_ratios =
	{
		{position = 0.1, ratios = asteroid_functions.vulcanus_ratio},
		{position = 0.9, ratios = asteroid_functions.ferrarius_ratio},
	}
}

asteroid_functions.carbolithic_belt =
{
	probability_on_range_chunk =
	{
		{position = 0.1, probability = 0, angle_when_stopped = asteroid_functions.chunk_angle},
		{position = 0.9, probability = asteroid_functions.carbolithic_chunks, angle_when_stopped = asteroid_functions.chunk_angle}
	},
	probability_on_range_medium =
	{
		{position = 0.1, probability = 0, angle_when_stopped = asteroid_functions.medium_angle},
		{position = 0.9, probability = asteroid_functions.carbolithic_medium, angle_when_stopped = asteroid_functions.medium_angle}
	},
	  probability_on_range_big =
	{
		{position = 0.1, probability = 0, angle_when_stopped = asteroid_functions.big_angle},
		{position = 0.9, probability = asteroid_functions.carbolithic_big, angle_when_stopped = asteroid_functions.big_angle}
	},
	type_ratios =
	{
		{position = 0.1, ratios = asteroid_functions.carbolithic_ratio},
		{position = 0.9, ratios = asteroid_functions.carbolithic_ratio},
	}
}

asteroid_functions.aquilo_aquilite =
{
	probability_on_range_chunk =
	{
		{position = 0.1, probability = asteroid_functions.aquilo_chunks, angle_when_stopped = asteroid_functions.chunk_angle},
		{position = 0.9, probability = asteroid_functions.aquilite_chunks, angle_when_stopped = asteroid_functions.chunk_angle}
	},
	probability_on_range_medium =
	{
		{position = 0.1, probability = asteroid_functions.aquilo_medium, angle_when_stopped = asteroid_functions.medium_angle},
		{position = 0.9, probability = asteroid_functions.aquilite_medium, angle_when_stopped = asteroid_functions.medium_angle}
	},
	  probability_on_range_big =
	{
		{position = 0.1, probability = asteroid_functions.aquilo_big, angle_when_stopped = asteroid_functions.big_angle},
		{position = 0.9, probability = asteroid_functions.aquilite_big, angle_when_stopped = asteroid_functions.big_angle}
	},
	type_ratios =
	{
		{position = 0.1, ratios = asteroid_functions.aquilo_ratio},
		{position = 0.9, ratios = asteroid_functions.aquilite_ratio},
	}
}

return asteroid_functions