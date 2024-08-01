execute as @e[type=bat] at @s run function tech:entity/bat

scoreboard players set @a playerheat 0

execute as @a run function tech:set_items

execute if score heat stats > max_heat config run return 1
execute if score stopAll tmp matches 1 run return 1

execute as @e[type=interaction, tag=reactor] at @s run function tech:entity/reactor
execute as @e[type=marker, tag=extractor] at @s run function tech:entity/extractor
execute as @e[type=marker, tag=ngate, tag=!executed] at @s run function tech:entity/ngate
# execute as @e[type=marker, tag=ngate] at @s run function tech:entity/ngate
execute as @e[type=marker, tag=energizer] at @s run function tech:entity/energizer
execute as @e[type=marker, tag=target] at @s run function tech:entity/target

tag @e[tag=powered, tag=ngate, type=marker, tag=!powered_next_tick] remove powered
tag @e[tag=powered_next_tick, tag=ngate, type=marker] add powered
tag @e[tag=powered_next_tick, tag=ngate, type=marker] remove powered_next_tick
tag @e[tag=ngate, type=marker] remove executed
tag @e[tag=powered, tag=energizer, type=marker] remove powered
tag @e[tag=powered, tag=target, type=marker] remove powered

execute as @e[type=marker, tag=ngate] at @s unless block ~ ~ ~ observer run kill @s

bossbar set tech:heat name [{"text": "Heat: ", "color": "red"}, {"score": {"name": "heat", "objective": "stats"}, "color": "aqua"}, {"text": "/", "color": "gray"}, {"score":{"name": "max_heat", "objective": "config"}, "color": "dark_aqua"}]
bossbar set tech:heat players @a
execute store result bossbar tech:heat max run scoreboard players get max_heat config
execute store result bossbar tech:heat value run scoreboard players get heat stats
scoreboard players set heat stats 0

scoreboard players enable @a resetHEAT

execute as @a run title @s actionbar [{"color":"#FF8000","text":"ᴄᴀʀʙᴏɴ ꜰᴏᴏᴛᴘʀɪɴᴛ"},{"color":"yellow","text":": "},{"color":"aqua","score":{"name":"@s","objective":"playerheat"}}]

execute as @a if score @s rheattimer matches 1.. run scoreboard players remove @s rheattimer 1
execute if score hightimer tmp matches 1.. run scoreboard players remove hightimer tmp 1