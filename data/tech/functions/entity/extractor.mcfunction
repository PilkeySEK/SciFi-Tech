execute unless block ~ ~ ~ #tech:reactor_recognized_glass run return run kill @s
particle dust{color:[0.0, 1.0, 1.0], scale:1} ~ ~ ~ 0.25 0.25 0.25 1 10 force @a[tag=!noParticles, distance=..32]
scoreboard players operation raycast_limit tmp = default_raycast_limit config

scoreboard players add heat stats 1
scoreboard players set .temp playerheat 1
scoreboard players operation .temp id = @s id

execute positioned ~1 ~ ~ if block ~ ~ ~ dispenser run function tech:block/dispenser/found
execute positioned ~-1 ~ ~ if block ~ ~ ~ dispenser run function tech:block/dispenser/found
execute positioned ~ ~ ~1 if block ~ ~ ~ dispenser run function tech:block/dispenser/found
execute positioned ~ ~ ~-1 if block ~ ~ ~ dispenser run function tech:block/dispenser/found

execute as @a if score @s id = .temp id run scoreboard players operation @s playerheat += .temp playerheat