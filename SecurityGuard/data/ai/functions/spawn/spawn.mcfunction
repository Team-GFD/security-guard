# Author: Denniss
# Version: 1.16.1

tag @e[tag=spawned] add AI_spawn
execute at @e[tag=thief_spawn,tag=AI_spawn,limit=1,sort=random] positioned ~ ~-50 ~ run summon minecraft:zombified_piglin ~ ~ ~ {Tags:["AI","AI_pathfind","AI_spawning"],Team:"AI",CustomName:"\"AI\"",Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.movement_speed",Base:0.3f},{Name:"generic.follow_range",Base:1000.0d}],DeathLootTable:"minecraft:empty"}
execute at @e[tag=AI_pathfind,tag=AI_spawning] run summon minecraft:creeper ~ ~ ~ {Tags:["AI","AI_spawning"],Team:"AI",Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.movement_speed",Base:0.35f}],DeathLootTable:"minecraft:empty"}
execute as @e[tag=AI_pathfind,tag=AI_spawning] at @s run summon minecraft:villager ~ ~50 ~ {Tags:["AI","AI_spawning"],Team:"Thief",CustomName:"\"AI\"",CustomNameVisible:1,Silent:1b,Offers:{},VillagerData:{profession:"minecraft:armorer",type:"minecraft:plains",level:2}}
execute as @e[tag=AI_spawning] run scoreboard players operation @s AI = number AI

execute as @e[type=villager,tag=AI_spawning] run data modify entity @s VillagerData.type set from entity @e[type=villager,tag=biomes,sort=random,limit=1] VillagerData.type
execute as @e[type=villager,tag=AI_spawning] run data modify entity @s CustomName set from entity @e[type=villager,tag=biomes,sort=random,limit=1] CustomName
execute as @e[tag=AI_pathfind,tag=AI_spawning] run data modify entity @s CustomName set from entity @e[type=villager,tag=AI_spawning,limit=1] CustomName

schedule function ai:spawn/target 1t

scoreboard players remove number AI 1

execute unless score number AI matches ..0 run schedule function ai:spawn/spawn 5t
