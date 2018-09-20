--[[
	dice Mod [dice3]
	================
	v0.1 by alxk
	Copyright (C) 2017-2018 Alexander K.
	LGPLv2.1+
	See LICENSE.txt for more information
]]--
local tilest =  {{"dice3_1.png","dice3_6.png","dice3_2.png","dice3_5.png","dice3_3.png","dice3_4.png"},
				{"dice3_2.png","dice3_5.png","dice3_1.png","dice3_6.png","dice3_3.png","dice3_4.png"},
				{"dice3_3.png","dice3_4.png","dice3_2.png","dice3_5.png","dice3_1.png","dice3_6.png"},
				{"dice3_4.png","dice3_3.png","dice3_2.png","dice3_5.png","dice3_1.png","dice3_6.png"},
				{"dice3_5.png","dice3_2.png","dice3_1.png","dice3_6.png","dice3_3.png","dice3_4.png"}}
for i, tiles in ipairs(tilest) do
	minetest.register_node("dice3:dice_"..i, {
		description = "dice",
		tiles=tiles,
		stack_max = 1,
		on_place = function() end,
		on_drop = function(itemstack, dropper, pos)
			core.item_drop(ItemStack("dice3:dice_"..math.random(6)) , dropper, pos)
			itemstack:clear()
			return itemstack
		end,
		groups = {not_in_creative_inventory=1}
	})
end
dice3i = nil
minetest.register_node("dice3:dice_6", {
		description = "dice",
		tiles={"dice3_6.png","dice3_1.png","dice3_2.png","dice3_5.png","dice3_3.png","dice3_4.png"},
		stack_max = 1,
		on_place = function() end,
		on_drop = function(itemstack, dropper, pos)
			core.item_drop(ItemStack("dice3:dice_"..math.random(6)) , dropper, pos)
			itemstack:clear()
			return itemstack
		end
	})
minetest.register_craft({
	output = "dice3:dice_6",
	recipe = {
		{"dye:black", "dye:white", "dye:black"},
		{"dye:white", "dye:black", "dye:white"},
		{"dye:black", "dye:white", "dye:black"}
	}
})