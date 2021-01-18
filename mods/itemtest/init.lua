itemtest = {}
itemtest.path = minetest.get_modpath("itemtest")
itemtest.LIGHT_MAX = 14

function itemtest.get_hotbar_bg(x,y)
	local out = ""
	for i=0,7,1 do
		out = out .."image["..x+i..","..y..";1,1;gui_hb_bg.png]"
	end
	return out
end

itemtest.gui_survival_form = "size[8,8.5]"..
			"list[current_player;main;0,4.25;8,1;]"..
			"list[current_player;main;0,5.5;8,3;8]"..
			"list[current_player;craft;1.75,0.5;3,3;]"..
			"list[current_player;craftpreview;5.75,1.5;1,1;]"..
			"image[4.75,1.5;1,1;gui_furnace_arrow_bg.png^[transformR270]"..
			"listring[current_player;main]"..
			"listring[current_player;craft]"..
			itemtest.get_hotbar_bg(0,4.25)


dofile(itemtest.path .. "/nodes.lua")
dofile(itemtest.path .. "/mapgen.lua")
dofile(itemtest.path .. "/biomes.lua")
dofile(itemtest.path .. "/wood.lua")
dofile(itemtest.path .. "/sapling.lua")
--Base operations
dofile(itemtest.path .. "/hand.lua")
dofile(itemtest.path .. "/functions.lua")