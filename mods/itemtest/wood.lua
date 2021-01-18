-- Weeping Willow

minetest.register_node("itemtest:weeping_willow_log", {
	description = "Weeping Willow Log",
	tiles = {
		"weeping_willow_core.png", 
		"weeping_willow_core.png", 
		"weeping_willow_bark.png",
		"weeping_willow_bark.png",
		"weeping_willow_bark.png",
		"weeping_willow_bark.png",
		
	},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
--	sounds = itemtest.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("itemtest:weeping_willow_planks", {
    description = "Weeping Willow Planks",
    paramtype2 = "facedir",
    place_param2 = 0,
    tiles = {"weeping_willow_planks.png"},
    is_ground_content = false,
    groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
 --  sounds = itemtest.node_sound_wood_defaults(),
})

minetest.register_node("itemtest:weeping_willow_leaves", {
    description = "Weeping Willow Leaves",
    drawtype = "allfaces_optional",
    waving = 1,
    tiles = {"weeping_willow_leaves.png"},
    paramtype = "light",
    is_ground_content = false,
    groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
    drop = {
        max_items = 1,
        items = {
            {
                -- player will get sapling with 1/20 chance
                items = {"itemtest:weeping_willow_sapling"}, 
                rarity = 20,
            },
            {
                -- player will get leaves only if he get no saplings,
                -- this is because max_items is 1
                items = {"itemtest:weeping_willow_leaves"},
            }
        }
    },
--    sounds = itemtest.node_sound_leaves_defaults(),

 --   after_place_node = itemtest.after_place_leaves,
})

minetest.register_craftitem("itemtest:weeping_willow_stick", {
	description = ("Weeping Willow Stick"),
	inventory_image = "weeping_willow_stick.png",
	groups = {stick = 1, flammable = 2},
})

minetest.register_node("itemtest:cherry_log", {
	description = "Cherry Log",
	tiles = {
		"cherry_core.png", 
		"cherry_core.png", 
		"cherry_bark.png",
		"cherry_bark.png",
		"cherry_bark.png",
		"cherry_bark.png",
		
	},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
--	sounds = itemtest.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("itemtest:cherry_planks", {
    description = "Cherry Planks",
    paramtype2 = "facedir",
    place_param2 = 0,
    tiles = {"cherry_planks.png"},
    is_ground_content = false,
    groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
 --  sounds = itemtest.node_sound_wood_defaults(),
})
minetest.register_node("itemtest:cherry_blossoms", {
    description = "Cherry Blossoms",
    drawtype = "allfaces_optional",
    waving = 1,
    tiles = {"cherry_blossoms.png"},
    paramtype = "light",
    is_ground_content = false,
    groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
    drop = {
        max_items = 1,
        items = {
            {
                -- player will get sapling with 1/20 chance
                items = {"itemtest:cherry_sapling"}, 
                rarity = 20,
            },
            {
                -- player will get leaves only if he get no saplings,
                -- this is because max_items is 1
                items = {"itemtest:cherry_blossoms"},
            }
        }
    },
--    sounds = itemtest.node_sound_leaves_defaults(),

 --   after_place_node = itemtest.after_place_leaves,
})

minetest.register_node("itemtest:yellow_cherry_blossoms", {
    description = "Yellow Cherry Blossoms",
    drawtype = "allfaces_optional",
    waving = 1,
    tiles = {"yellow_cherry_blossoms.png"},
    paramtype = "light",
    is_ground_content = false,
    groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
    drop = {
        max_items = 1,
        items = {
            {
                -- player will get sapling with 1/20 chance
                items = {"itemtest:yellow_cherry_sapling"}, 
                rarity = 20,
            },
            {
                -- player will get leaves only if he get no saplings,
                -- this is because max_items is 1
                items = {"itemtest:yellow_cherry_blossoms"},
            }
        }
    },
--    sounds = itemtest.node_sound_leaves_defaults(),

 --   after_place_node = itemtest.after_place_leaves,
})

minetest.register_node("itemtest:blue_cherry_blossoms", {
    description = "Blue Cherry Blossoms",
    drawtype = "allfaces_optional",
    waving = 1,
    tiles = {"blue_cherry_blossoms.png"},
    paramtype = "light",
    is_ground_content = false,
    groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
    drop = {
        max_items = 1,
        items = {
            {
                -- player will get sapling with 1/20 chance
                items = {"itemtest:blue_cherry_sapling"}, 
                rarity = 20,
            },
            {
                -- player will get leaves only if he get no saplings,
                -- this is because max_items is 1
                items = {"itemtest:blue_cherry_blossoms"},
            }
        }
    },
--    sounds = itemtest.node_sound_leaves_defaults(),

 --   after_place_node = itemtest.after_place_leaves,
})

minetest.register_craftitem("itemtest:cherry_stick", {
	description = ("Cherry Stick"),
	inventory_image = "cherry_stick.png",
	groups = {stick = 1, flammable = 2},
})

minetest.register_node("itemtest:oak_log", {
	description = "Oak Log",
	tiles = {
		"oak_core.png", 
		"oak_core.png", 
		"oak_bark.png",
		"oak_bark.png",
		"oak_bark.png",
		"oak_bark.png",
		
	},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
--	sounds = itemtest.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("itemtest:oak_planks", {
    description = "Oak Planks",
    paramtype2 = "facedir",
    place_param2 = 0,
    tiles = {"oak_planks.png"},
    is_ground_content = false,
    groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
 --  sounds = itemtest.node_sound_wood_defaults(),
})

minetest.register_node("itemtest:oak_leaves", {
    description = "Oak Leaves",
    drawtype = "allfaces_optional",
    waving = 1,
    tiles = {"oak_leaves.png"},
    paramtype = "light",
    is_ground_content = false,
    groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
    drop = {
        max_items = 1,
        items = {
            {
                -- player will get sapling with 1/20 chance
                items = {"itemtest:oak_sapling"}, 
                rarity = 20,
            },
            {
                -- player will get leaves only if he get no saplings,
                -- this is because max_items is 1
                items = {"itemtest:oak_leaves"},
            }
        }
    },
--    sounds = itemtest.node_sound_leaves_defaults(),

 --   after_place_node = itemtest.after_place_leaves,
})

minetest.register_craftitem("itemtest:oak_stick", {
	description = ("Oak Stick"),
	inventory_image = "oak_stick.png",
	groups = {stick = 1, flammable = 2},
})
