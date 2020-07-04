# Author: Denniss
# Version: 1.16.1

kill @e[tag=AI_target]
execute at @e[type=minecraft:area_effect_cloud,tag=artifact,tag=!captured] run summon minecraft:vex ^ ^-46 ^ {NoAI:1,Silent:1b,Tags:["AI_target"],PersistenceRequired:1b}