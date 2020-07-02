# Author: Denniss
# Version: 1.15.2

tag @e[tag=spawned] add AI_spawn
execute at @e[tag=thief_spawn,tag=AI_spawn,limit=1] positioned ~ ~-50 ~ run summon minecraft:enderman ~ ~ ~ {Tags:["AI","AI_pathfind","AI_spawning"],Team:"AI",CustomName:"\"AI\"",Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.movementSpeed",Base:0.25f},{Name:"generic.followRange",Base:1000.0d}]}
execute as @e[tag=AI_pathfind,tag=AI_spawning] at @s run summon minecraft:villager ~ ~50 ~ {Tags:["AI","AI_spawning"],Team:"Thief",CustomName:"\"AI\"",CustomNameVisible:1,Silent:1b,Offers:{},VillagerData:{profession:"minecraft:armorer",type:"minecraft:plains",level:2}}
execute as @e[tag=AI_pathfind,tag=AI_spawning] run effect give @s minecraft:slowness 10 10
execute as @e[tag=AI_spawning] run scoreboard players operation @s ai = number ai

execute as @e[type=villager,tag=AI_spawning] run data modify entity @s VillagerData.type set from entity @e[type=villager,tag=biomes,sort=random,limit=1] VillagerData.type
execute as @e[type=villager,tag=AI_spawning] run data modify entity @s CustomName set from entity @e[type=villager,tag=biomes,sort=random,limit=1] CustomName

tag @e[tag=AI_spawning] remove AI_spawning

scoreboard players remove number ai 1

execute unless score number ai matches ..0 run schedule function ai:spawn 1s
