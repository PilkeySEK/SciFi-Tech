schedule function tech:1s 1s

execute if score waittoggle tmp matches 1 run return run scoreboard players set waittoggle tmp 0
execute if score waittoggle tmp matches 0 run return run scoreboard players set waittoggle tmp 1