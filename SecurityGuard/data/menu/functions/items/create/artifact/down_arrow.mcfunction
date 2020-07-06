# Author: SirSheepe
# Version: 1.16+

summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Tags:["shp_menu_item","shp_fire","shp_size_artifact_down_arrow","shp_menu_artifact","shp_unset"],Rotation:[-90.0f,0.0f],ArmorItems:[{},{},{},{id:"minecraft:cyan_dye",Count:1b,tag:{CustomModelData:21b}}],Fire:20s,DisabledSlots:4144959}
scoreboard players set @e[tag=shp_unset] menu_id 7

tag @e[tag=shp_unset] remove shp_unset