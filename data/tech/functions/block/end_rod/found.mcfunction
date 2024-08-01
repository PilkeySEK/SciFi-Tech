scoreboard players remove raycast_limit tmp 1

execute if block ~ ~ ~ end_rod[facing=up] positioned ~ ~1 ~ run function tech:main_raycast
execute if block ~ ~ ~ end_rod[facing=down] positioned ~ ~-1 ~ run function tech:main_raycast
execute if block ~ ~ ~ end_rod[facing=north] positioned ~ ~ ~-1 run function tech:main_raycast
execute if block ~ ~ ~ end_rod[facing=south] positioned ~ ~ ~1 run function tech:main_raycast
execute if block ~ ~ ~ end_rod[facing=west] positioned ~-1 ~ ~ run function tech:main_raycast
execute if block ~ ~ ~ end_rod[facing=east] positioned ~1 ~ ~ run function tech:main_raycast
