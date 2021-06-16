# Author: Denniss
# Version: 1.17+
# called from game:ingame/global_main

# kill check
tag @e[tag=AI_pathfind] remove has_villager
execute as @e[tag=AI_pathfind,tag=!has_villager] at @e[tag=AI_villager] if score @e[tag=AI_villager,distance=..1,sort=nearest,limit=1] AI = @s AI run tag @s add has_villager
execute if score cooldown game matches -1 as @e[tag=AI_pathfind,tag=!has_villager] at @s run function ai:kill

# escape potion
execute as @e[tag=AI_villager] store success score @s escape run effect clear @s minecraft:fire_resistance
execute as @e[tag=AI_villager] at @s if score @s escape matches 1 positioned ~ ~-50 ~ as @e[tag=AI_pathfind,distance=..3] positioned ~ ~50 ~ run function game:ingame/consumables/escape

# teleport cat below guard
execute at @a[team=1Guard] positioned ~ ~-50 ~ as @e[tag=AI_guard] if score @s player_id = @p[team=1Guard] player_id run tp @s ~ ~ ~ ~ ~

# teleport AI
execute as @e[tag=AI_villager] at @e[tag=AI_pathfind] if score @s AI = @e[tag=AI_pathfind,distance=..1,sort=nearest,limit=1] AI run tp @s ~ ~50 ~ ~ 0
execute as @e[tag=AI_run] at @e[tag=AI_pathfind,tag=!near_guard] if score @s AI = @e[tag=AI_pathfind,tag=!near_guard,distance=..1,sort=nearest,limit=1] AI run tp @s ~ ~ ~ ~ ~
execute as @e[tag=AI_pathfind,tag=near_guard] at @e[tag=AI_run] if score @s AI = @e[tag=AI_run,distance=..1,sort=nearest,limit=1] AI run tp @s ~ ~ ~ ~ ~

## steal phase
# capturing
execute if score state game matches 1 if score cooldown game matches -1 as @e[tag=AI_villager] at @s run function ai:capture_points/check
execute as @e[tag=AI_villager] at @s if score @s capture_time matches 1.. unless block ~ ~-1 ~ minecraft:gold_block run scoreboard players set @s capture_time 0

# near guard check
execute if score state game matches 1 as @e[tag=AI_pathfind,tag=!near_guard] at @s positioned ~ ~50 ~ if entity @p[team=1Guard,tag=!in_cam,distance=..6] run function ai:near_guard/run

# set target (artifact)
execute as @e[tag=AI_pathfind] unless data entity @s AngryAt run tag @s add AI_not_angry
execute if score state game matches 1 if entity @e[tag=AI_target,tag=!AI_target_active] as @e[tag=AI_pathfind,tag=AI_not_angry,limit=1] at @s unless block ~ ~49 ~ minecraft:gold_block positioned ~ ~3 ~ at @e[tag=AI_target,tag=!AI_target_active,sort=nearest,limit=1] run function ai:target/set
execute if score state game matches 1 if entity @e[tag=AI_target] unless entity @e[tag=AI_target,tag=!AI_target_active] as @e[tag=AI_pathfind,tag=AI_not_angry,limit=1] at @s unless block ~ ~49 ~ minecraft:gold_block positioned ~ ~3 ~ at @e[tag=AI_target,sort=nearest,limit=1] run function ai:target/set
execute if score state game matches 1 as @e[tag=artifact,tag=!captured] at @s positioned ^ ^-46 ^ unless entity @e[tag=AI_target,distance=..1] unless entity @e[tag=AI,distance=..4] run summon minecraft:vex ~ ~ ~ {NoAI:1,Silent:1b,Tags:["AI_target"],PersistenceRequired:1b}

# change target if not moving
execute if score cooldown game matches -1 if score state game matches 1 if entity @e[tag=AI_target,tag=!AI_target_active] as @e[tag=AI_pathfind,nbt={Motion:[0.0d,0.0d,0.0d]}] at @s unless block ~ ~-1 ~ minecraft:gold_block run function ai:idle/counter
execute if score state game matches 3 as @e[tag=AI_pathfind,nbt={Motion:[0.0d,0.0d,0.0d]}] at @s run function ai:idle/counter
scoreboard players remove @e[tag=!AI_idle,scores={AI_idle=1..}] AI_idle 2
tag @e[tag=AI_pathfind] remove AI_idle

## escape phase
# set target (door)
execute if score state game matches 3 as @e[tag=AI_pathfind] at @s unless data entity @s AngryAt run data modify entity @s AngryAt set from entity @e[tag=AI_escape,sort=nearest,limit=1] UUID

# kill target when AI is near and door is not open
execute if score state game matches 3 as @e[tag=AI_escape] at @s positioned ~ ~50 ~ unless entity @e[tag=shp_open,distance=..5] if entity @e[tag=AI,distance=..5] run kill @s
