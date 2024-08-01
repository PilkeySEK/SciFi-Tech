execute unless block ~ ~ ~ #tech:energizer run return run kill @s

execute if entity @s[tag=powered] run return run execute unless block ~ ~ ~ redstone_block run setblock ~ ~ ~ redstone_block
execute unless block ~ ~ ~ nether_wart_block run setblock ~ ~ ~ nether_wart_block