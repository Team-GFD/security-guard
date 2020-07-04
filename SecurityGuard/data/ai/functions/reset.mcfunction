# Author: Denniss
# Version: 1.16.1

kill @e[tag=AI_target]
execute at @e[type=minecraft:area_effect_cloud,tag=artifact] run summon minecraft:vex ^ ^-46 ^ {NoAI:1,Silent:1b,Tags:["AI_target"],PersistenceRequired:1b}
execute as @e[type=minecraft:area_effect_cloud,tag=shortcut] at @s positioned ~ ~-50 ~ run fill ~-4 ~-2 ~-4 ~4 ~2 ~4 minecraft:activator_rail replace minecraft:redstone_wire

kill @e[tag=AI]
tag @e[tag=AI_spawn] remove AI_spawn