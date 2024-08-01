scoreboard objectives add stats dummy
scoreboard objectives add config dummy

scoreboard players set default_raycast_limit config 64
scoreboard players set max_heat config 4096

bossbar add tech:heat {"text":"🔥 Heat 🔥", "color": "red"}
bossbar set tech:heat color yellow

scoreboard objectives add id dummy
scoreboard objectives add playerheat dummy "Carbon Footprint"

schedule function tech:4tick 4t replace
scoreboard objectives add rheattimer dummy

schedule function tech:1s 1s replace