execute unless block ~ ~ ~ target run return run kill @s

execute if entity @s[tag=powered] run return run execute unless block ~ ~ ~ target[power=15] run setblock ~ ~ ~ target[power=15]
execute unless block ~ ~ ~ target[power=0] run setblock ~ ~ ~ target[power=0]