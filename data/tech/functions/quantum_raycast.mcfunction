scoreboard players operation raycast_limit tmp = default_raycast_limit config

scoreboard players remove raycast_limit tmp 1
execute unless block ~ ~ ~ sea_lantern unless score raycast_limit tmp matches ..0 positioned ^ ^ ^1 rotated ~ ~ run function tech:quantum_raycast
execute if block ~ ~ ~ sea_lantern unless score raycast_limit tmp matches ..0 positioned ^ ^ ^1 rotated ~ ~ run function tech:main_raycast

scoreboard players operation raycast_limit tmp = default_raycast_limit config
