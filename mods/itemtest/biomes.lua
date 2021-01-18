--Aliases

minetest.register_alias("mapgen_stone", "itemtest:stone")
minetest.register_alias("mapgen_water_source", "itemtest:water_source")
minetest.register_alias("mapgen_river_water_source", "itemtest:water_source")
--minetest.register_alias("mapgen_lava_source", "default:lava_source")
minetest.register_alias("mapgen_dirt", "itemtest:dirt")
minetest.register_alias("mapgen_dirt_with_grass", "itemtest:dirt_with_grass")
minetest.register_alias("mapgen_sand", "itemtest:sand")
minetest.register_alias("mapgen_gravel", "itemtest:gravel")
--minetest.register_alias("mapgen_desert_stone", "default:desert_stone")
--minetest.register_alias("mapgen_desert_sand", "default:desert_sand")
--minetest.register_alias("mapgen_dirt_with_snow", "default:dirt_with_snow")
--minetest.register_alias("mapgen_snowblock", "default:snowblock")
--minetest.register_alias("mapgen_snow", "default:snow")
--minetest.register_alias("mapgen_ice", "default:ice")


--Biomes

 minetest.register_biome({
		name = "plains",
		node_top = "itemtest:dirt_with_grass",
		depth_top = 1,
		node_filler = "itemtest:dirt_with_grass",
		depth_filler = 1,
		node_riverbed = "itemtest:gravel",
		depth_riverbed = 2,
		y_max = 100,
		y_min = 0,
		heat_point = 40,
		humidity_point = 30,
})

minetest.register_biome({
        name = "cherry_blossom_forest",
        node_top = "itemtest:dirt_with_grass",
        depth_top = 1,
        node_filler = "itemtest:dirt",
        depth_filler = 5,
        node_stone = "itemtest:stone",
        node_riverbed = "itemtest:dirt",
        depth_riverbed = 2,
        y_max = 20,
        y_min = 0,
        heat_point = 45,
        humidity_point = 27,
})

minetest.register_decoration({
    deco_type = "schematic",
    place_on = {"itemtest:dirt_with_grass"},
    sidelen = 16,
    fill_ratio = 0.0075,
    biomes = {"cherry_blossom_forest"},
    y_max = 150,
    y_min = 1,
    schematic = itemtest.path .. "/schematics/cherry_tree.mts",
    flags = "place_center_x, place_center_z",
    rotation = "random",
})

minetest.register_decoration({
    deco_type = "schematic",
    place_on = {"itemtest:dirt_with_grass"},
    sidelen = 16,
    fill_ratio = 0.0075,
    biomes = {"cherry_blossom_forest"},
    y_max = 150,
    y_min = 1,
    schematic = itemtest.path .. "/schematics/yellow_cherry_tree.mts",
    flags = "place_center_x, place_center_z",
    rotation = "random",
})

minetest.register_decoration({
    deco_type = "schematic",
    place_on = {"itemtest:dirt_with_grass"},
    sidelen = 16,
    fill_ratio = 0.00005,
    biomes = {"cherry_blossom_forest"},
    y_max = 150,
    y_min = 1,
    schematic = itemtest.path .. "/schematics/blue_cherry_tree.mts",
    flags = "place_center_x, place_center_z",
    rotation = "random",
})

minetest.register_biome({
		name = "oak_forest",
		node_top = "itemtest:dirt_with_grass",
		depth_top = 1,
		node_filler = "itemtest:dirt",
		depth_filler = 1,
		node_riverbed = "itemtest:gravel",
		depth_riverbed = 2,
		y_max = 75,
		y_min = 1,
		heat_point = 50,
		humidity_point = 35,
})

minetest.register_decoration({
    deco_type = "schematic",
    place_on = {"itemtest:dirt_with_grass"},
    sidelen = 16,
    fill_ratio = 0.03,
    biomes = {"oak_forest"},
    y_max = 150,
    y_min = 1,
    schematic = itemtest.path .. "/schematics/oak_tree.mts",
    flags = "place_center_x, place_center_z",
    rotation = "random",
})


minetest.register_decoration({
    deco_type = "schematic",
    place_on = {"itemtest:dirt_with_grass"},
    sidelen = 16,
    fill_ratio = 0.00005,
    biomes = {"plains"},
    y_max = 150,
    y_min = 1,
    schematic = itemtest.path .. "/schematics/oak_tree.mts",
    flags = "place_center_x, place_center_z",
    rotation = "random",
})
