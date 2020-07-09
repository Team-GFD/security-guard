# Author: SirSheepe
# Version: 1.16+

scoreboard players add @s door_tick 1

tp @s[tag=shp_right_door] ^0.04 ^ ^
tp @s[tag=shp_left_door] ^-0.04 ^ ^

execute if score @s door_tick matches 18.. run tag @s remove shp_open
execute if score @s[tag=shp_right_door] door_tick matches 18 at @s as @a[distance=..15] at @s run playsound minecraft:block.netherite_block.place block @s ^ ^ ^ 2 0
execute if score @s[tag=shp_right_door] door_tick matches 18 at @s at @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1,tag=exit_door] run fill ^-1 ^ ^1 ^-2 ^2 ^1 air
execute if score @s[tag=shp_right_door] door_tick matches 18 at @s run tag @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1,tag=exit_door] add shp_open