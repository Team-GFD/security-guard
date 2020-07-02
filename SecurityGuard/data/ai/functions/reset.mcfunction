# Author: Denniss
# Version: 1.15.2

kill @e[type=endermite,tag=artifact_]
execute at @e[type=minecraft:area_effect_cloud,tag=artifact] run summon minecraft:endermite ^ ^-45 ^1 {NoAI:1,PlayerSpawned:1b,Lifetime:-2147483647,Silent:1b,Tags:["artifact_"]}
execute as @e[type=minecraft:area_effect_cloud,tag=shortcut] at @s positioned ~ ~-50 ~ run fill ~-4 ~-2 ~-4 ~4 ~2 ~4 minecraft:activator_rail replace minecraft:redstone_wire

kill @e[tag=AI]
kill @e[type=cat,tag=guard]
tag @e[tag=AI_spawn] remove AI_spawn