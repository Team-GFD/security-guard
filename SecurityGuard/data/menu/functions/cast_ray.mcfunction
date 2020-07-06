# Author: SirSheepe
# Version: 1.16+

function intersect:get/ray_aabb_distance

execute unless score @s rayDistance matches ..-1 run scoreboard players add @e[type=minecraft:armor_stand,tag=current_item] menu_viewers 1
execute unless score @s rayDistance matches ..-1 run tag @s add viewer