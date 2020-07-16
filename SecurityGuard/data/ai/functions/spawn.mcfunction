# Author: Denniss
# Version: 1.16.1
# called from ai:start

tag @e[tag=spawned] add AI_spawn

# spawn AI entities
execute at @e[tag=thief_spawn,tag=AI_spawn,limit=1,sort=random] positioned ~ ~-50 ~ run summon minecraft:zombified_piglin ~ ~ ~ {Tags:["AI","AI_pathfind","AI_spawning"],Team:"AI",CustomName:"\"AI\"",Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.movement_speed",Base:0.35f},{Name:"generic.follow_range",Base:1000.0d}],DeathLootTable:"minecraft:empty"}
execute at @e[tag=AI_pathfind,tag=AI_spawning] run summon minecraft:creeper ~ ~ ~ {Tags:["AI","AI_run","AI_spawning"],Team:"AI",Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.movement_speed",Base:0.35f}],DeathLootTable:"minecraft:empty"}
execute as @e[tag=AI_pathfind,tag=AI_spawning] at @s run summon minecraft:villager ~ ~50 ~ {Tags:["AI","AI_villager","AI_spawning"],Team:"2Thief",CustomName:"\"AI\"",CustomNameVisible:1,Silent:1b,Offers:{},VillagerData:{profession:"minecraft:armorer",type:"minecraft:plains",level:4}}
execute as @e[tag=AI_spawning] run scoreboard players operation @s AI = AI_id AI

scoreboard players remove AI_id AI 1

# set villager AI name and biome
execute at @e[tag=AI_nbt,limit=1] run loot replace block ~ ~-1 ~ container.0 loot ai:get_thief_nbt
execute at @e[tag=AI_nbt,limit=1] as @e[tag=AI_villager,tag=AI_spawning] run data modify entity @s VillagerData.type set from block ~ ~-1 ~ Items[1].tag.Biome
execute at @e[tag=AI_nbt,limit=1] as @e[tag=AI_villager,tag=AI_spawning] run data modify entity @s CustomName set from block ~ ~-1 ~ Items[0].tag.ThiefName
execute as @e[tag=AI_pathfind,tag=AI_spawning] run data modify entity @s CustomName set from entity @e[tag=AI_villager,tag=AI_spawning,limit=1] CustomName
execute as @e[tag=AI_villager,tag=AI_spawning] at @s run replaceitem entity @s weapon minecraft:splash_potion{CustomPotionColor:4101334}

# difficulty (0=easy,1=normal,2=hard)
execute if score mode AI matches 0 run tag @e[tag=AI_villager,tag=AI_spawning] add potion_used
execute if score mode AI matches 0 as @e[tag=!AI_villager,tag=AI_spawning] run attribute @s minecraft:generic.movement_speed base set 0.3
execute if score mode AI matches 2 as @e[tag=!AI_villager,tag=AI_spawning] run attribute @s minecraft:generic.movement_speed base set 0.4
execute if score mode AI matches 0 as @e[tag=AI_villager,tag=AI_spawning] run data modify entity @s VillagerData.level set value 2
execute if score mode AI matches 2 as @e[tag=AI_villager,tag=AI_spawning] run data modify entity @s VillagerData.level set value 5

# repeat until selected number of AI's are spawned
tag @e[tag=AI_spawning] remove AI_spawning
execute unless score AI_id AI matches ..0 run function ai:spawn
