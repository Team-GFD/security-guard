# Author: Denniss
# Version: 1.16.1
# called from game:ingame/global_main

# teleport cat below guard
execute at @a[team=Guard] positioned ~ ~-50 ~ as @e[type=cat,tag=guard] if score @s player_id = @p[team=Guard] player_id run tp @s ~ ~ ~ ~ ~

# teleport AI
execute as @e[tag=AI,type=villager] at @e[tag=AI_pathfind] if score @s AI = @e[tag=AI_pathfind,distance=..1,sort=nearest,limit=1] AI run tp @s ~ ~50 ~ ~ 0
execute as @e[tag=AI,type=creeper] at @e[tag=AI_pathfind,tag=!near_guard] if score @s AI = @e[tag=AI_pathfind,tag=!near_guard,distance=..1,sort=nearest,limit=1] AI run tp @s ~ ~ ~ ~ ~
execute as @e[tag=AI_pathfind,tag=near_guard] at @e[type=creeper,tag=AI] if score @s AI = @e[type=creeper,tag=AI,distance=..1,sort=nearest,limit=1] AI run tp @s ~ ~ ~ ~ ~

# capturing
execute if score cooldown game matches -1 as @e[type=minecraft:villager,tag=AI] at @s if block ~ ~-1 ~ minecraft:gold_block positioned ~ ~-50 ~ unless entity @e[tag=AI_pathfind,tag=near_guard,distance=..1,sort=nearest,limit=1] positioned ~ ~50 ~ if entity @e[type=minecraft:area_effect_cloud,distance=..2,tag=!captured] run function game:ingame/capturing
execute as @e[type=minecraft:villager,tag=AI] at @s if score @s capture_time matches 1.. unless block ~ ~-1 ~ minecraft:gold_block run scoreboard players set @s capture_time 0

# kill check
tag @e[tag=AI_pathfind] remove has_villager
execute as @e[tag=AI_pathfind] at @e[type=villager] if score @e[type=villager,distance=..1,sort=nearest,limit=1] AI = @s AI run tag @s add has_villager
execute if score cooldown game matches -1 as @e[tag=AI_pathfind,tag=!has_villager] at @s run function ai:kill

# near guard check
execute as @e[tag=AI_pathfind,tag=!near_guard] at @s positioned ~ ~50 ~ if entity @p[team=Guard,tag=!in_cam,distance=..6] run function ai:near_guard/run

# set target
execute as @e[tag=AI_pathfind] at @s unless data entity @s AngryAt positioned ~ ~3 ~ at @e[tag=AI_target,sort=nearest,limit=1,tag=!AI_target_active] run function ai:set_target
execute as @e[tag=artifact,tag=!captured] at @s positioned ^ ^-46 ^ unless entity @e[tag=AI_target,distance=..1] unless entity @e[tag=AI,distance=..5] run summon minecraft:vex ~ ~ ~ {NoAI:1,Silent:1b,Tags:["AI_target"],PersistenceRequired:1b}
