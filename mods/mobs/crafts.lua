-- wool
minetest.register_node(
   "mobs:wool",
   {
      description = "Wool Bundle",
      tiles ={"mobs_wool.png"},
      is_ground_content = false,
      groups = {snappy = 2, oddly_breakable_by_hand = 3, fall_damage_add_percent = -25, fuzzy = 1},
      sounds = default.node_sound_leaves_defaults(),
   })

-- raw meat
minetest.register_craftitem(
   "mobs:meat_raw",
   {
      description = "Raw Meat",
      inventory_image = "mobs_meat_raw.png",
      on_use = minetest.item_eat({hp = 3, sat = 30}),
   })

-- cooked meat
minetest.register_craftitem(
   "mobs:meat", 
   {
      description = "Cooked Meat",
      inventory_image = "mobs_meat_cooked.png",
      on_use = minetest.item_eat({hp = 7, sat = 70}),
   })

minetest.register_craft(
   {
      type = "cooking",
      output = "mobs:meat",
      recipe = "mobs:meat_raw",
      cooktime = 5,
   })

-- net (right click to capture animal)
minetest.register_tool(
   "mobs:net",
   {
      description = "Net (Right-click to capture)",
      inventory_image = "mobs_net.png",
   })

minetest.register_craft(
   {
      output = "mobs:net",
      recipe = {
	 {"", "", "default:fiber"},
	 {"", "default:fiber", "default:fiber"},
	 {"group:stick", "", ""},
      }
   })

-- lasso (right click to capture animal)
minetest.register_tool(
   "mobs:lasso",
   {
      description = "Lasso (Right-click to capture)",
      inventory_image = "mobs_lasso.png",
   })

minetest.register_craft(
   {
      output = "mobs:lasso",
      recipe = {
	 {"", "default:rope", ""},
	 {"default:rope", "", "default:rope"},
	 {"group:stick", "default:rope", ""},
      }
   })