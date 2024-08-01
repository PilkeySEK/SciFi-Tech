particle crit ~ ~.25 ~ 0.2 0.2 0.2 0.1 10 force @a[tag=!noParticles, distance=..32]

execute unless data entity @s interaction unless data entity @s attack run scoreboard players operation raycast_limit tmp = default_raycast_limit config
execute unless data entity @s interaction unless data entity @s attack run scoreboard players add heat stats 1

execute unless data entity @s interaction unless data entity @s attack positioned ~ ~1 ~ run return run function tech:entity/reactor/raycast_up_until_glass

setblock ~ ~ ~ air
setblock ~ ~-1 ~ air
setblock ~1 ~-1 ~ air
setblock ~-1 ~-1 ~ air
setblock ~ ~-1 ~1 air
setblock ~ ~-1 ~-1 air
setblock ~-1 ~-1 ~-1 air
setblock ~1 ~-1 ~1 air
setblock ~-1 ~-1 ~1 air
setblock ~1 ~-1 ~-1 air

kill @s