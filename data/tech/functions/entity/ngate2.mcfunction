# execute if entity @s[tag=powered] run return 0

scoreboard players operation raycast_limit tmp = default_raycast_limit config

scoreboard players set .temp playerheat 1
scoreboard players add heat stats 1
scoreboard players operation .temp id = @s id

execute if block ~ ~ ~ observer[facing=down] rotated 0 -90 positioned ~ ~1 ~ run return run function tech:main_raycast
execute if block ~ ~ ~ observer[facing=up] rotated 0 90 positioned ~ ~-1 ~ run return run function tech:main_raycast
execute if block ~ ~ ~ observer[facing=south] rotated -180 0 positioned ~ ~ ~-1 run return run function tech:main_raycast
execute if block ~ ~ ~ observer[facing=north] rotated 0 0 positioned ~ ~ ~1 run return run function tech:main_raycast
execute if block ~ ~ ~ observer[facing=east] rotated 90 0 positioned ~-1 ~ ~ run return run function tech:main_raycast
execute if block ~ ~ ~ observer[facing=west] rotated -90 0 positioned ~1 ~ ~ run return run function tech:main_raycast
