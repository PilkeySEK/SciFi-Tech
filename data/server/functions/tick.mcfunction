setblock 0 63 0 bedrock
fill 0 64 0 0 65 0 air

function server:crash_prevention
execute as @a run function server:trigger

# old tag:
tag @a remove alreadyJoined

execute as @a[tag=!already_joined] run function server:first_join

gamemode creative @a[tag=!noCreative, gamemode=!spectator, tag=!forceSpectator]
gamemode spectator @a[tag=forceSpectator]

# execute positioned -21 112 -21 run gamemode adventure @a[dx=42, dy=42, dz=42, gamemode=!adventure]
# execute positioned -21 112 -21 as @a unless entity @s[dx=42, dy=42, dz=42] run gamemode creative @s[gamemode=adventure, tag=!noCreative, tag=!forceSpectator, gamemode=!creative]