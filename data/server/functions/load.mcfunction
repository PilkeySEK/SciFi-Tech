gamerule doMobSpawning false
gamerule mobGriefing false
gamerule doFireTick false
gamerule doImmediateRespawn true
gamerule announceAdvancements false
gamerule doDaylightCycle false

scoreboard objectives add tmp dummy
scoreboard objectives add crash_prevention dummy

scoreboard objectives add creativeMode trigger
scoreboard objectives add spectatorMode trigger
scoreboard objectives add man trigger
scoreboard objectives add rules trigger
scoreboard objectives add discord trigger
scoreboard objectives add resetHEAT trigger

tellraw @a {"text": "The Load is Code", "color": "#00FF00"}
tellraw @a {"color":"gray","italic":true,"text":"(Sci-Fi Tech Originally by supertoady)","underlined":true}