# Author: SirSheepe
# Version: 1.16+

execute if score @s[tag=!shp_hover] menu_viewers matches 1.. run function menu:events/hover

execute if score @s[tag=shp_hover] menu_viewers matches 0 run function menu:events/unhover

execute if score @s menu_viewers matches 1.. if entity @a[tag=viewer,scores={menu_sneak=0,menu_rclick=1..}] run function menu:events/action

execute if score @s menu_viewers matches 1.. if entity @a[tag=viewer,scores={menu_sneak=1..,menu_rclick=1..}] run function menu:events/shift_action