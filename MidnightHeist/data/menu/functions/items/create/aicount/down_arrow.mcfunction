# Author: SirSheepe
# Version: 1.16+

summon minecraft:armor_stand ~ ~ ~ {DisabledSlots:4144959,Invisible:1b,NoGravity:1b,Tags:["shp_menu_item","shp_fire","shp_size_aicount_down_arrow","shp_menu_aicount","shp_unset"],Rotation:[-90.0f,0.0f],ArmorItems:[{},{},{},{id:"minecraft:cyan_dye",Count:1b,tag:{CustomModelData:21}}],Fire:20s}
scoreboard players set @e[tag=shp_unset] menu_id 10

tag @e[tag=shp_unset] remove shp_unset