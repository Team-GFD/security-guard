# Author: SirSheepe
# Version: 1.16+

execute at @p run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:0,Range:0,Tags:["look_vector"]}

execute as @a run function intersect:get/ray

execute as @e[type=minecraft:armor_stand,tag=shp_menu_item,tag=!shp_disabled] run function menu:check_hit

scoreboard players set @a menu_sneak 0
scoreboard players set @a menu_rclick 0