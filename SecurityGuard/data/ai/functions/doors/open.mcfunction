# Author: Denniss
# Version: 1.16.1
# called from <phase 3 start>

kill @e[tag=AI_target]
execute at @e[tag=shp_open] run summon vex ^-1.5 ^-47 ^2 {NoAI:1b,Tags:["AI_escape"]}
execute at @e[tag=shp_open] run fill ^-1 ^-50 ^1 ^-2 ^-50 ^1 minecraft:tripwire replace minecraft:activator_rail