# Author: SirSheepe
# Version: 1.16+

scoreboard players add @s door_tick 1

tp @s[tag=shp_right_door] ^0.04 ^ ^
tp @s[tag=shp_left_door] ^-0.04 ^ ^

execute if score @s door_tick matches 20.. run tag @s remove shp_door_open
execute if score @s[tag=shp_right_door] door_tick matches 20 run playsound minecraft:block.netherite_block.place block @a ^0.8 ^ ^ 1 0