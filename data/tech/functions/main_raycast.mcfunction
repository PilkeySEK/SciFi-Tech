execute if score stopAll tmp matches 1 run return 1
# execute if score .temp playerheat matches 50.. run tellraw @a[tag=is_dev] ["",{"score":{"objective":"id","name":".temp"}}]

execute if score heat stats > max_heat config run return run function tech:main_raycast/loop_warning

execute if block ~ ~ ~ #tech:energizer unless entity @e[tag=energizer, type=marker, distance=...5] run function tech:entity/energizer/register
execute if block ~ ~ ~ #tech:energizer run return run tag @e[tag=energizer, type=marker, limit=1, sort=nearest, distance=...5] add powered

execute if block ~ ~ ~ target unless entity @e[tag=target, type=marker, distance=...5] run function tech:entity/target/register
execute if block ~ ~ ~ target run tag @e[tag=target, type=marker, limit=1, sort=nearest, distance=...5] add powered

execute if block ~ ~ ~ dispenser run return run function tech:block/dispenser/found

execute if block ~ ~ ~ end_rod run return run function tech:block/end_rod/found

execute if block ~ ~ ~ dropper run data remove block ~ ~ ~ Items

execute if block ~ ~ ~ dropper run function tech:block/dropper/found

execute if block ~ ~ ~ observer unless entity @e[tag=ngate, type=marker, distance=...5] run function tech:entity/ngate/register
execute if block ~ ~ ~ observer run tag @e[tag=ngate, limit=1, type=marker, sort=nearest, distance=...5] add powered_next_tick
# execute if block ~ ~ ~ observer run tag @e[tag=ngate, limit=1, type=marker, sort=nearest, distance=...5] add executed
execute if block ~ ~ ~ observer as @e[tag=ngate, type=marker, distance=...5] run return run function tech:entity/ngate

execute if block ~ ~ ~ #tech:quantum unless score raycast_limit tmp matches ..0 run scoreboard players add heat stats 1
execute if block ~ ~ ~ #tech:quantum unless score raycast_limit tmp matches ..0 run scoreboard players add .temp playerheat 1
execute if block ~ ~ ~ #tech:quantum unless score raycast_limit tmp matches ..0 positioned ^ ^ ^1 rotated ~ ~ run function tech:quantum_raycast

execute if block ~ ~ ~ #tech:container run function tech:dust

execute if block ~ ~ ~ #tech:absorber run return 0
execute if block ~ ~ ~ soul_sand if score waittoggle tmp matches 0 run return 0
execute if block ~ ~ ~ #tech:conditionals[lit=false] run return 0

execute if block ~ ~ ~ #trapdoors unless function tech:block/trapdoor/trapdoor run return 0

particle enchanted_hit ~ ~ ~ 0.05 0.05 0.05 0.075 1 force @a[tag=!noParticles, distance=..32]
execute positioned ^ ^ ^.25 run particle enchanted_hit ~ ~ ~ 0.05 0.05 0.05 0.075 1 normal @a[tag=!noParticles, distance=..32]
execute positioned ^ ^ ^.5 run particle enchanted_hit ~ ~ ~ 0.05 0.05 0.05 0.075 1 normal @a[tag=!noParticles, distance=..32]
execute positioned ^ ^ ^-.25 run particle enchanted_hit ~ ~ ~ 0.05 0.05 0.05 0.075 1 normal @a[tag=!noParticles, distance=..32]

scoreboard players remove raycast_limit tmp 1
execute unless score raycast_limit tmp matches ..0 positioned ^ ^ ^1 rotated ~ ~ run function tech:main_raycast
