# Author: Denniss
# Version: 1.16.1
# called from game:ingame/global_reset

# artifact targets
kill @e[tag=AI_target]
kill @e[tag=AI_escape]

# shortcut reset
execute as @e[type=minecraft:area_effect_cloud,tag=shortcut] at @s positioned ~ ~-50 ~ run fill ~-4 ~-2 ~-4 ~4 ~2 ~4 minecraft:rail replace minecraft:redstone_wire

# door reset
execute at @e[tag=exit_door] run fill ^-1 ^-50 ^1 ^-2 ^-50 ^1 minecraft:activator_rail replace minecraft:tripwire

# kill remaining AI entities
kill @e[tag=AI,type=!minecraft:zombified_piglin]
tp @e[tag=AI_pathfind] @e[tag=AI_nbt,limit=1]
tag @e[tag=AI_spawn] remove AI_spawn