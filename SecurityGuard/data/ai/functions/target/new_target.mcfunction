# Author: Denniss
# Version: 1.16.1
# called from ai:target/idle_counter

scoreboard players set @s AI_idle 0
kill @e[tag=AI_target_active,distance=..20]
tag @e[tag=AI_target,sort=nearest,limit=1,distance=20..] add AI_target_active
effect give @e[tag=AI_target_active,sort=nearest,limit=1,distance=20..] minecraft:wither 100 1
data modify entity @s AngryAt set from entity @e[tag=AI_target_active,sort=nearest,limit=1,distance=20..] UUID
