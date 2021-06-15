# Author: SirSheepe
# Version: 1.16+

execute if score #doors menu_id matches 0 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 15
execute if score #doors menu_id matches 1 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 17
