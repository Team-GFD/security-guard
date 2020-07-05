# Author: Denniss
# Version: 1.16.1

execute at @a[team=Guard] positioned ~ ~-50 ~ as @e[type=cat,tag=guard] if score @s player_id = @p[team=Guard] player_id run tp @s ~ ~ ~ ~ ~

execute as @e[tag=AI_pathfind] at @s run function ai:teleport/villager
execute as @e[tag=AI_pathfind,tag=!near_guard] at @s run function ai:teleport/creeper
#execute as @e[tag=AI_pathfind,tag=near_guard] at @s run function ai:teleport/piglin
execute as @e[tag=AI_pathfind,tag=near_guard] at @e[type=creeper] if score @s AI = @e[type=creeper,distance=..1,sort=nearest,limit=1] AI run tp @s ~ ~ ~
#execute as @e[tag=AI_pathfind,tag=near_guard] at @s run tp @s @e[type=creeper,limit=1,sort=nearest]

execute if score cooldown game matches -1 as @e[type=minecraft:villager,tag=AI,tag=!near_guard] at @s if block ~ ~-1 ~ minecraft:gold_block if entity @e[type=minecraft:area_effect_cloud,distance=..2,tag=!captured] run function game:ingame/capturing
execute as @e[type=minecraft:villager,tag=AI] at @s if score @s capture_time matches 1.. unless block ~ ~-1 ~ minecraft:gold_block run scoreboard players set @s capture_time 0

tag @e[tag=AI_pathfind] remove has_villager
execute as @e[tag=AI_pathfind] at @e[type=villager] if score @e[type=villager,distance=..1,sort=nearest,limit=1] AI = @s AI run tag @s add has_villager
execute as @e[tag=AI_pathfind,tag=!has_villager] at @s run function ai:kill
execute as @e[tag=AI_pathfind,tag=!near_guard] at @s if entity @e[type=cat,tag=guard,distance=..6] run function ai:near_guard/run

execute as @e[tag=AI_pathfind] at @s positioned ~ ~3 ~ unless data entity @s AngryAt run data modify entity @s AngryAt set from entity @e[tag=AI_target,sort=nearest,limit=1] UUID
execute as @e[tag=artifact,tag=!captured] at @s positioned ^ ^-46 ^ unless entity @e[tag=AI_target,distance=..1] unless entity @e[tag=AI,distance=..5] run summon minecraft:vex ~ ~ ~ {NoAI:1,Silent:1b,Tags:["AI_target"],PersistenceRequired:1b}
