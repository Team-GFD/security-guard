# Author: SirSheepe
# Version: 1.16+

summon minecraft:armor_stand ~ ~ ~ {DisabledSlots:4144959,Invisible:1b,NoGravity:1b,Tags:["shp_menu_item","shp_fire","shp_size_5x3","shp_menu_main","shp_unset"],Rotation:[180.0f,0.0f],ArmorItems:[{},{},{},{id:"minecraft:cyan_dye",Count:1b,tag:{CustomModelData:1}}],Fire:20s,DisabledSlots:4144959}
scoreboard players set @e[tag=shp_unset] menu_id 1

tag @e[tag=shp_unset] remove shp_unset