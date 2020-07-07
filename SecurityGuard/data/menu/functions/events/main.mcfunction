# Author: SirSheepe
# Version: 1.16+

scoreboard players set #action_count menu_id 0
execute as @a[tag=viewer,scores={menu_sneak=0,menu_rclick=1..}] run scoreboard players add #action_count menu_id 1

scoreboard players set #shift_action_count menu_id 0
execute as @a[tag=viewer,scores={menu_sneak=1..,menu_rclick=1..}] run scoreboard players add #shift_action_count menu_id 1

execute if score @s[tag=!shp_hover] menu_viewers matches 1.. run function menu:events/hover
execute unless score @s[tag=!shp_hover] menu_viewers matches 1.. if score @s menu_viewers matches 1.. unless score @s menu_viewers = @s old_menu_viewers run function menu:events/hover

execute if score @s[tag=shp_hover] menu_viewers matches 0 run function menu:events/unhover
execute unless score @s[tag=shp_hover] menu_viewers matches 0 if score @s menu_viewers matches 0 unless score @s menu_viewers = @s old_menu_viewers run function menu:events/unhover

execute if score @s menu_viewers matches 1.. if score #action_count menu_id matches 1.. run function menu:events/action

execute if score @s menu_viewers matches 1.. if score #shift_action_count menu_id matches 1.. run function menu:events/shift_action

scoreboard players operation @s old_menu_viewers = @s menu_viewers