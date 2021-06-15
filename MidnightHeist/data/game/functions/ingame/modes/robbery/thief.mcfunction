# Author: InternetAlien
# Version: 1.15.2

execute store success score @s escape run effect clear @s minecraft:fire_resistance
execute if score @s[tag=!camera_mode] escape matches 1 run function game:ingame/consumables/escape

execute store success score @s reveal run effect clear @s minecraft:unluck
execute if score @s[tag=!camera_mode] reveal matches 1 run effect clear @s minecraft:invisibility

function game:ingame/inventory_control

execute as @e[type=armor_stand,limit=1,sort=nearest,distance=..10,tag=camera,tag=!disabled] at @s run particle end_rod ~ ~ ~ 0.25 0.25 0.25 0.05 1 normal @a[team=2Thief]

execute if score state game matches 1 at @s[tag=!camera_mode] if score @s sneak matches 1.. if block ~ ~-1 ~ minecraft:gold_block run function game:ingame/capturing

execute if score @s capture_time matches 1.. if score @s sneak matches 0 run scoreboard players remove @s capture_time 1

execute if score @s capture_time matches 1.. if score @s sneak matches 0 run xp set @s 20 levels
execute if score @s capture_time matches 1.. if score @s sneak matches 0 run xp add @s -1 points
execute if score @s capture_time matches 1.. if score @s sneak matches 0 run xp set @s 0 levels

execute at @s if score @s capture_time matches 1.. unless block ~ ~-1 ~ minecraft:gold_block run scoreboard players remove @s capture_time 5

execute at @s if score @s capture_time matches 1.. unless block ~ ~-1 ~ minecraft:gold_block run xp set @s 20 levels
execute at @s if score @s capture_time matches 1.. unless block ~ ~-1 ~ minecraft:gold_block run xp add @s -5 points
execute at @s if score @s capture_time matches 1.. unless block ~ ~-1 ~ minecraft:gold_block run xp set @s 0 levels

execute if score @s capture_time matches ..-1 run xp set @s 0 points
execute if score @s capture_time matches ..-1 run scoreboard players set @s capture_time 0

execute as @s[tag=!camera_mode] if score @s stopped matches 1 run tag @s add camera_mode

execute if score @s capture_time matches 0 run xp set @s 0 points
execute if score @s capture_time matches 0 run xp set @s 0 levels
