execute if items entity @s weapon.mainhand bat_spawn_egg run return run function server:trigger/man/nuclear_reactor
execute if items entity @s weapon.mainhand dispenser run return run function server:trigger/man/redirector
execute if items entity @s weapon.mainhand dropper run return run function server:trigger/man/splitter
execute if items entity @s weapon.mainhand redstone_lamp run return run function server:trigger/man/conditional
execute if items entity @s weapon.mainhand nether_wart_block run return run function server:trigger/man/energizer
execute if items entity @s weapon.mainhand redstone run return run function server:trigger/man/energizer
execute if items entity @s weapon.mainhand obsidian run return run function server:trigger/man/absorber
execute if items entity @s weapon.mainhand blue_stained_glass run return run function server:trigger/man/extractor
execute if items entity @s weapon.mainhand observer run return run function server:trigger/man/not_gate
execute if items entity @s weapon.mainhand #trapdoors run return run function server:trigger/man/trapdoor
execute if items entity @s weapon.mainhand sea_lantern run return run function server:trigger/man/quantum
execute if items entity @s weapon.mainhand ochre_froglight run return run function server:trigger/man/qsplitter
execute if items entity @s weapon.mainhand end_rod run return run function server:trigger/man/shifter
execute if items entity @s weapon.mainhand target run return run function server:trigger/man/shifter
execute if items entity @s weapon.mainhand soul_sand run return run tellraw @s "its easy enough to understand\njust mess around with it"

execute if data entity @s SelectedItem run tellraw @s [{"text":"Could not find a man page matching your item D:", "color": "red"}, {"text": " (Trying to match item: \"", "color": "gray"}, {"nbt": "SelectedItem.id", "entity": "@s", "color": "gold"}, {"text": "\")", "color": "gray"}]
execute unless data entity @s SelectedItem run tellraw @s [{"text":"Could not find a man page matching your item D:", "color": "red"}, {"text": " (Trying to match item: \"", "color": "gray"}, {"text":"minecraft:air","color": "gold"}, {"text": "\")", "color": "gray"}]
tellraw @s {"text":"You can suggest a man page in the discord though (/trigger discord)", "color": "red"}