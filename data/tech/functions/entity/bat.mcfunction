execute unless entity @p[distance=..5] run kill
execute unless entity @p[distance=..5] run return 0

setblock ~ ~1 ~ beacon
setblock ~ ~ ~ iron_block
setblock ~1 ~ ~ iron_block
setblock ~-1 ~ ~ iron_block
setblock ~ ~ ~1 iron_block
setblock ~ ~ ~-1 iron_block
setblock ~-1 ~ ~-1 iron_block
setblock ~1 ~ ~1 iron_block
setblock ~-1 ~ ~1 iron_block
setblock ~1 ~ ~-1 iron_block

execute align xyz positioned ~.5 ~1 ~.5 run summon interaction ~ ~ ~ {Tags:["reactor","temp"], width:1.1f, height:1.1f}
scoreboard players operation @e[tag=temp] id = @p id
tag @e remove temp

kill @s