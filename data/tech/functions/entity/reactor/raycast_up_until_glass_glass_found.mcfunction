execute unless entity @e[tag=extractor, distance=...5] align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["extractor","temp"]}
scoreboard players operation @e[tag=temp] id = @s id
tag @e remove temp