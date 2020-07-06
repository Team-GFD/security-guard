# Author: Denniss
# Version: 1.16.1
# called from game:ingame/global_reset

# artifact targets
kill @e[tag=AI_target]
execute at @e[type=minecraft:area_effect_cloud,tag=artifact] run summon minecraft:vex ^ ^-46 ^ {NoAI:1,Silent:1b,Tags:["AI_target"],PersistenceRequired:1b}

# shortcut reset
execute as @e[type=minecraft:area_effect_cloud,tag=shortcut] at @s positioned ~ ~-50 ~ run fill ~-4 ~-2 ~-4 ~4 ~2 ~4 minecraft:activator_rail replace minecraft:redstone_wire

# kill remaining AI entities
kill @e[tag=AI]
tag @e[tag=AI_spawn] remove AI_spawn