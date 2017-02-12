local modpath = minetest.get_modpath("currency")

-- internationalization boilerplate
local S, NS = dofile(modpath.."/intllib.lua")

minetest.log("info", S("Currency mod loading..."))

dofile(modpath.."/craftitems.lua")
minetest.log("info", S("[Currency] Craft_items Loaded!"))
dofile(modpath.."/shop.lua")
minetest.log("info", S("[Currency] Shop Loaded!"))
dofile(modpath.."/barter.lua")
minetest.log("info", S("[Currency] Barter Loaded!"))
dofile(modpath.."/safe.lua")
minetest.log("info", S("[Currency] Safe Loaded!"))
dofile(modpath.."/crafting.lua")
minetest.log("info", S("[Currency] Crafting Loaded!"))

if minetest.setting_getbool("creative_mode") then
	minetest.log("info", S("[Currency] Creative mode in use, skipping basic income."))
else
	dofile(modpath.."/income.lua")
	minetest.log("info", S("[Currency] Income Loaded!"))
end
