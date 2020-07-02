# Author: InternetAlien
# Version: 1.15.2

execute store success score @s escape run effect clear @s minecraft:fire_resistance
execute if score @s[tag=!camera_mode] escape matches 1 run function game:ingame/consumables/escape

execute store success score @s reveal run effect clear @s minecraft:unluck
execute if score @s[tag=!camera_mode] reveal matches 1 run effect clear @s minecraft:invisibility

execute if score @s stoped matches 0 run scoreboard players add thieves_left game 1

execute at @s[tag=!camera_mode] if score @s sneak matches 1.. if block ~ ~-1 ~ minecraft:gold_block run function game:ingame/modes/robbery/capture_points/capturing

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

execute as @s[tag=!camera_mode] if score @s stoped matches 1 run tag @s add camera_mode

execute if score @s capture_time matches 0 run xp set @s 0 points
execute if score @s capture_time matches 0 run xp set @s 0 levels
