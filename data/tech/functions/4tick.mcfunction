execute if score hightimer tmp matches 1.. run return 0

execute as @a if score @s playerheat > Highest playerheat run tellraw @a [{"color":"aqua","selector":"@s"},{"color":"gold","text":" Has Got the "},{"bold":true,"color":"gold","text":"HIGHEST "},{"color":"gold","text":"Carbon Footprint!"}," (",{"bold":true,"color":"red","score":{"name":"@s","objective":"playerheat"}},")"]
execute as @a if score @s playerheat > Highest playerheat run scoreboard players set hightimer tmp 60
execute as @a if score @s playerheat > Highest playerheat run scoreboard players operation Highest playerheat = @s playerheat

schedule function tech:4tick 4t replace