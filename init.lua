--[[
	Dice Mod
	===============
	v0.1 by alxk
	Copyright (C) 2017-2018 Alexander K.
	LGPLv2.1+
	See LICENSE.txt for more information
]]--
local tilest =  {{"dice_1.png","dice_6.png","dice_2.png","dice_5.png","dice_3.png","dice_4.png"},
				{"dice_2.png","dice_5.png","dice_1.png","dice_6.png","dice_3.png","dice_4.png"},
				{"dice_3.png","dice_4.png","dice_2.png","dice_5.png","dice_1.png","dice_6.png"},
				{"dice_4.png","dice_3.png","dice_2.png","dice_5.png","dice_1.png","dice_6.png"},
				{"dice_5.png","dice_2.png","dice_1.png","dice_6.png","dice_3.png","dice_4.png"}}
for i, tiles in ipairs(tilest) do
	minetest.register_node("dice:dice_"..i, {
		description = "Dice",
		tiles=tiles,
		stack_max = 1,
		on_place = function() end,
		on_drop = function(itemstack, dropper, pos)
			core.item_drop(ItemStack("dice:dice_"..math.random(6)) , dropper, pos)
			itemstack:clear()
			return itemstack
		end,
		groups = {not_in_creative_inventory=1}
	})
end
dicei = nil
minetest.register_node("dice:dice_6", {
		description = "Dice",
		tiles={"dice_6.png","dice_1.png","dice_2.png","dice_5.png","dice_3.png","dice_4.png"},
		stack_max = 1,
		on_place = function() end,
		on_drop = function(itemstack, dropper, pos)
			core.item_drop(ItemStack("dice:dice_"..math.random(6)) , dropper, pos)
			itemstack:clear()
			return itemstack
		end
	})
minetest.register_craft({
	output = "dice:dice_6",
	recipe = {
		{"dye:black", "dye:white", "dye:black"},
		{"dye:white", "dye:black", "dye:white"},
		{"dye:black", "dye:white", "dye:black"}
	}
})