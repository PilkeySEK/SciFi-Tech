execute unless data block ~ ~ ~ Lock run data modify block ~ ~ ~ Lock set value "locked"

scoreboard players operation raycast_limit tmp = default_raycast_limit config
scoreboard players add heat stats 1
scoreboard players add .temp playerheat 1
execute if block ~ ~ ~ dispenser[facing=up] rotated 0 -90 positioned ~ ~1 ~ run function tech:main_raycast
execute if block ~ ~ ~ dispenser[facing=down] rotated 0 90 positioned ~ ~-1 ~ run function tech:main_raycast
execute if block ~ ~ ~ dispenser[facing=north] rotated -180 0 positioned ~ ~ ~-1 run function tech:main_raycast
execute if block ~ ~ ~ dispenser[facing=south] rotated 0 0 positioned ~ ~ ~1 run function tech:main_raycast
execute if block ~ ~ ~ dispenser[facing=west] rotated 90 0 positioned ~-1 ~ ~ run function tech:main_raycast
execute if block ~ ~ ~ dispenser[facing=east] rotated -90 0 positioned ~1 ~ ~ run function tech:main_raycast