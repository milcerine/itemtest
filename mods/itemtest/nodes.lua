minetest.register_node("itemtest:stone", {
	description = "Stone",
	tiles = {"stone.png"},
	groups = {cracky = 1, stone = 1},
	drop = "stone:cobblestone",
})

minetest.register_node("itemtest:cobblestone", {
	description = "Cobblestone",
	tiles = {"cobble.png"},
	is_ground_content = false,
	groups = {cracky = 1, stone = 2, cobble = 1},
})

minetest.register_node("itemtest:dirt", {
	description = "Dirt",
	tiles = {"dirt.png"},
	groups = {crumbly = 3, soil = 1},
	soil = {
				base = "itemtest:dirt",
				dry = "itemtest:soil",
				wet = "itemtest:soil_wet"
			}
})

minetest.register_node("itemtest:dirt_with_grass", {
	description = "Grass Block",
	tiles = {"dirt_with_grass.png", "dirt.png",
		{name = "dirt.png^dirt_with_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "itemtest:dirt",
--	sounds = default.node_sound_dirt_defaults({
--		footstep = {name = "default_grass_footstep", gain = 0.25},
--	}),
	soil = {
			base = "itemtest:dirt_with_grass",
			dry = "itemtest:soil",
			wet = "itemtest:soil_wet"
		}
})

minetest.register_node("itemtest:sand", {
	description = "Sand",
	tiles = {"sand.png"},
	groups = {crumbly = 3, falling_node = 1, sand = 1},
--	sounds = default.node_sound_sand_defaults(),
})

minetest.register_node("itemtest:black_sand", {
	description = "Black Sand",
	tiles = {"black_sand.png"},
	groups = {crumbly = 3, falling_node = 1, sand = 1},
--	sounds = default.node_sound_sand_defaults(),
})

minetest.register_node("itemtest:gravel", {
	description = "Gravel",
	tiles = {"gravel.png"},
	groups = {crumbly = 2, falling_node = 1},
--	sounds = default.node_sound_gravel_defaults(),
	drop = {
		max_items = 1,
		items = {
			{items = {"itemtest:flint"}, rarity = 10},
			{items = {"itemtest:gravel"}}
		}
	}
})

minetest.register_craftitem("itemtest:flint", {
	description = "Flint",
	inventory_image = "flint.png",
})

minetest.register_node("itemtest:water_source", {
	description = "Water Source",
	drawtype = "liquid",
	waving = 3,
	tiles = {
		{
			name = "water_source_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
		{
			name = "water_source_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	alpha = 191,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "itemtest:water_flowing",
	liquid_alternative_source = "itemtest:water_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 103, r = 30, g = 60, b = 90},
	groups = {water = 3, liquid = 3, cools_lava = 1, fall_damage_add_percent = -100},
--	sounds = default.node_sound_water_defaults(),
})

minetest.register_node("itemtest:water_flowing", {
	description = "Flowing Water",
	drawtype = "flowingliquid",
	waving = 3,
	tiles = {"water.png"},
	special_tiles = {
		{
			name = "water_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.5,
			},
		},
		{
			name = "water_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.5,
			},
		},
	},
	alpha = 191,
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "itemtest:water_flowing",
	liquid_alternative_source = "itemtest:water_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 103, r = 30, g = 60, b = 90},
	groups = {water = 3, liquid = 3, not_in_creative_inventory = 1,
		cools_lava = 1, fall_damage_add_percent = -100},
--	sounds = default.node_sound_water_defaults(),
})