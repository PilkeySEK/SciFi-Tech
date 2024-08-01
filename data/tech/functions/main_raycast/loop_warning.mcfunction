scoreboard players set stopAll tmp 1
summon marker ~ ~ ~ {Tags:["tmp.warningMarker"]}

tellraw @a {"text": "Too much heat! Fix your machines (possibly fix infinite loops) and then run /trigger resetHEAT.", "color": "dark_red"}
scoreboard players set heatMsg tmp 1

execute store result score x tmp run data get entity @e[tag=tmp.warningMarker, limit=1, sort=nearest] Pos[0]
execute store result score y tmp run data get entity @e[tag=tmp.warningMarker, limit=1, sort=nearest] Pos[1]
execute store result score z tmp run data get entity @e[tag=tmp.warningMarker, limit=1, sort=nearest] Pos[2]

tellraw @a [{"text": "Warning: ", "color": "yellow"}, {"text": "Possible infinite loop detected at ", "color": "gray"}, {"score":{"name": "x", "objective": "tmp"}, "color": "dark_aqua"}, " ", {"score":{"name": "y", "objective": "tmp"}, "color": "dark_aqua"}, " ", {"score":{"name": "z", "objective": "tmp"}, "color": "dark_aqua"}]

kill @e[tag=tmp.warningMarker, type=marker]

bossbar set tech:heat name [{"text": "Heat: ", "color": "red"}, {"score": {"name": "heat", "objective": "stats"}, "color": "aqua"}, {"text": "/", "color": "gray"}, {"score":{"name": "max_heat", "objective": "config"}, "color": "dark_aqua"}]
execute store result bossbar tech:heat max run scoreboard players get max_heat config
execute store result bossbar tech:heat value run scoreboard players get heat stats

scoreboard players set @a rheattimer 0