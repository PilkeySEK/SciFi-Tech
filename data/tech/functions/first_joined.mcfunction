execute unless entity @s[tag=joined] run scoreboard players add .max id 1
execute unless entity @s[tag=joined] run scoreboard players operation @s id = .max id
tag @s add joined