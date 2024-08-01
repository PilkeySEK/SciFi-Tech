execute if score @s creativeMode matches 1.. run function server:trigger/creativemode
execute if score @s creativeMode matches ..-1 run function server:trigger/creativemode
execute if score @s spectatorMode matches 1.. run function server:trigger/spectatormode
execute if score @s spectatorMode matches ..-1 run function server:trigger/spectatormode
execute if score @s man matches 1.. run function server:trigger/man
execute if score @s man matches ..-1 run function server:trigger/man
execute if score @s rules matches 1.. run function server:trigger/rules
execute if score @s rules matches ..-1 run function server:trigger/rules
execute if score @s discord matches 1.. run function server:trigger/discord
execute if score @s discord matches ..-1 run function server:trigger/discord
execute if score @s resetHEAT matches 1.. run function server:trigger/resetheat
execute if score @s resetHEAT matches ..-1 run function server:trigger/resetheat

scoreboard players reset @s creativeMode
scoreboard players reset @s spectatorMode
scoreboard players reset @s man
scoreboard players reset @s rules
scoreboard players reset @s discord
# scoreboard players reset @s resetHEAT
scoreboard players set @s resetHEAT 0

scoreboard players enable @s man
scoreboard players enable @s rules
scoreboard players enable @s discord
# execute if score heat stats >= max_heat config run scoreboard players enable @s resetHEAT
# execute if score resetHEAT tmp matches 1 run scoreboard players enable @s resetHEAT
scoreboard players enable @s resetHEAT
scoreboard players enable @s[tag=!forceSpectator, tag=!noCreative, gamemode=!creative] creativeMode
scoreboard players enable @s[gamemode=!spectator] spectatorMode