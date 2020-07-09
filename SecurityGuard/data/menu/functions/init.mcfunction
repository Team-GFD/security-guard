# Author: SirSheepe
# Version: 1.16+

scoreboard players set #artifacts menu_id 35
scoreboard players set #doors menu_id 1
scoreboard players set #aicount menu_id 1
scoreboard players set #aimode menu_id 1

function menu:items/private/set_aimode_display
function menu:items/private/set_aicount_display
function menu:items/private/set_artifact_number

execute if score #doors menu_id matches 0 run data modify entity @e[type=armor_stand,tag=shp_size_switch,tag=shp_menu_doors,limit=1] ArmorItems[3].tag.CustomModelData set value 14
execute if score #doors menu_id matches 1 run data modify entity @e[type=armor_stand,tag=shp_size_switch,tag=shp_menu_doors,limit=1] ArmorItems[3].tag.CustomModelData set value 16

scoreboard objectives add menu_id dummy
scoreboard objectives add menu_viewers dummy
scoreboard objectives add old_menu_viewers dummy

scoreboard objectives add menu_sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add menu_rclick minecraft.used:minecraft.carrot_on_a_stick