execute if entity @s[tag=forceSpectator] run return run tellraw @s {"text": "You are being forced into spectator mode!", "color": "red"}
execute if entity @s[tag=noCreative] run return run tellraw @s {"text": "You are not allowed to go into creative mode!", "color": "red"}

gamemode creative @s

tellraw @s {"text": "You are now in creative mode.", "color": "green"}