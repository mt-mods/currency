if not minetest.get_modpath("loot") then
	return
end

loot.register_loot({
	weights = { generic = 50 },
	payload = {
		stack = ItemStack("currency:minegeld"),
		min_size = 1,
		max_size = 500,
	},
})

loot.register_loot({
	weights = { generic = 50 },
	payload = {
		stack = ItemStack("currency:minegeld_5"),
		min_size = 1,
		max_size = 100,
	},
})

loot.register_loot({
	weights = { generic = 50 },
	payload = {
		stack = ItemStack("currency:minegeld_10"),
		min_size = 1,
		max_size = 50,
	},
})