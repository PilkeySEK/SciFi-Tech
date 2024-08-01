execute unless entity @s[tag=powered] run function tech:entity/ngate2
execute as @a if score @s id = .temp id run scoreboard players operation @s playerheat += .temp playerheat
tag @s add executed