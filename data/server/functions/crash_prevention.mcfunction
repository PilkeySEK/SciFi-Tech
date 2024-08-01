execute store result score entity_count crash_prevention if entity @e

execute store result score item_count crash_prevention if entity @e[type=item]
execute if score item_count crash_prevention matches 50.. run kill @e[type=item]
execute if score item_count crash_prevention matches 50.. run tellraw @a [{"text": "Auto Crash Prevention removed ", "color":"red"}, {"score": {"name": "item_count", "objective": "crash_prevention"}, "color": "dark_aqua"}, {"text": " items!", "color": "red"}]

# theres some kinda item that has this tag so uuh yea im killin' it
kill @e[tag=_kill, type=!player]

kill @e[type=area_effect_cloud]

kill @e[type=firework_rocket]

kill @e[type=potion]

kill @e[type=tnt]
kill @e[type=tnt_minecart]

# too bad im too lazy to add all the colors o_o
kill @e[type=item, nbt={Item:{id:"minecraft:shulker_box"}}]
kill @e[type=item, nbt={Item:{id:"minecraft:orange_shulker_box"}}]

kill @e[type=wither]

kill @e[type=block_display]

kill @e[type=shulker]

kill @e[type=warden]

kill @e[type=slime]

kill @e[type=item, nbt={Item:{id:"minecraft:bundle"}}]

clear @a bundle[enchantment_glint_override=true]

kill @e[type=arrow]

# glowing effect is so laggy OMG
effect clear @e glowing

kill @e[type=wind_charge]
kill @e[type=breeze_wind_charge]

kill @e[type=chicken]

kill @e[type=armor_stand]