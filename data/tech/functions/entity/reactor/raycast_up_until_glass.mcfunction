execute if block ~ ~ ~ #tech:reactor_recognized_glass run return run function tech:entity/reactor/raycast_up_until_glass_glass_found
scoreboard players remove raycast_limit tmp 1
execute unless score raycast_limit tmp matches ..0 positioned ~ ~1 ~ run function tech:entity/reactor/raycast_up_until_glass