# Author: Denniss
# Version: 1.17+
# called from game:ingame/escape_mode/start

# remove artifact targets
kill @e[tag=AI_target]

# spawn vex at each door
execute as @e[tag=exit_door] at @s run summon vex ^-1.5 ^-47 ^2 {NoAI:1b,Silent:1b,Tags:["AI_escape"],PersistenceRequired:1b}

# open doors
execute as @e[tag=shp_open] at @s run fill ^-1 ^-50 ^1 ^-2 ^-50 ^1 minecraft:tripwire replace minecraft:activator_rail
