# Author: SirSheepe
# Version: 1.16+

scoreboard players set #artifacts menu_id 50
scoreboard players set #doors menu_id 1
scoreboard players set #aicount menu_id 2
scoreboard players set #aimode menu_id 1

function menu:clear_all
function menu:load/lobby

scoreboard objectives add menu_id dummy
scoreboard objectives add menu_viewers dummy
scoreboard objectives add old_menu_viewers dummy

scoreboard objectives add menu_sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add menu_rclick minecraft.used:minecraft.carrot_on_a_stick