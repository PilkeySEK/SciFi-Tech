execute if block ~ ~ ~ #trapdoors[facing=north,open=true] positioned as @s positioned ^ ^ ^1 positioned ~ ~ ~1 if entity @s[distance=..0.5] run return fail
execute if block ~ ~ ~ #trapdoors[facing=south,open=true] positioned as @s positioned ^ ^ ^1 positioned ~ ~ ~1 if entity @s[distance=..0.5] run return fail
execute if block ~ ~ ~ #trapdoors[facing=east,open=true] positioned as @s positioned ^ ^ ^1 positioned ~1 ~ ~ if entity @s[distance=..0.5] run return fail
execute if block ~ ~ ~ #trapdoors[facing=west,open=true] positioned as @s positioned ^ ^ ^1 positioned ~1 ~ ~ if entity @s[distance=..0.5] run return fail
execute if block ~ ~ ~ #trapdoors[facing=north,open=true] positioned as @s positioned ^ ^ ^1 positioned ~ ~ ~-1 if entity @s[distance=..0.5] run return fail
execute if block ~ ~ ~ #trapdoors[facing=south,open=true] positioned as @s positioned ^ ^ ^1 positioned ~ ~ ~-1 if entity @s[distance=..0.5] run return fail
execute if block ~ ~ ~ #trapdoors[facing=east,open=true] positioned as @s positioned ^ ^ ^1 positioned ~-1 ~ ~ if entity @s[distance=..0.5] run return fail
execute if block ~ ~ ~ #trapdoors[facing=west,open=true] positioned as @s positioned ^ ^ ^1 positioned ~-1 ~ ~ if entity @s[distance=..0.5] run return fail
execute if block ~ ~ ~ #trapdoors[open=false] positioned as @s positioned ^ ^ ^1 positioned ~ ~1 ~ if entity @s[distance=..0.5] run return fail
execute if block ~ ~ ~ #trapdoors[open=false] positioned as @s positioned ^ ^ ^1 positioned ~ ~-1 ~ if entity @s[distance=..0.5] run return fail
return 1