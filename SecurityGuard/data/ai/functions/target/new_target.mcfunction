# Author: Denniss
# Version: 1.16.1
# called from ai:target/idle_counter

scoreboard players set @s AI_idle 0
kill @e[tag=AI_target_active,distance=..20]
tag @e[tag=AI_target,sort=random,limit=1,distance=20..] add AI_target_select
tag @e[tag=AI_target_select] add AI_target_active
effect give @e[tag=AI_target_select] minecraft:wither 100 1
data modify entity @s AngryAt set from entity @e[tag=AI_target_select,limit=1] UUID
tag @e[tag=AI_target_select] remove AI_target_select
