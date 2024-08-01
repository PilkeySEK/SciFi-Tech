execute if score @s rheattimer matches 1.. run return run tellraw @s {"text": "timer still high!", "color": "red"}

scoreboard players set heat stats 0
scoreboard players set heatMsg tmp 0
scoreboard players set stopAll tmp 0
scoreboard players set @s resetHEAT 0
scoreboard players set Highest playerheat 0
tellraw @a {"text": "Heat reset.", "color": "green"}
scoreboard players set @s rheattimer 600