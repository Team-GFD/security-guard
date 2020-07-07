# Author: SirSheepe
# Version: 1.16+

function menu:clear_all

scoreboard players operation required game = #artifacts menu_id
scoreboard players operation total AI = #aicount menu_id
scoreboard players operation mode AI = #aimode menu_id

function game:ingame/global_start
