# Author: SirSheepe
# Version: 1.16+

function menu:clear/settings/aimode
schedule function menu:fire 10t replace

execute unless score #aimode menu_id matches 0.. run scoreboard players set #aimode menu_id 1
scoreboard players set #max_aimode menu_id 2
scoreboard players set #min_aimode menu_id 0

execute positioned -9.5 2.0 -3.0 run function menu:items/create/aimode/title
execute positioned -9.5 2.0 -3.0 run function menu:items/create/aimode/up_arrow
execute positioned -9.5 2.0 -3.0 run function menu:items/create/aimode/down_arrow
execute positioned -9.5 2.0 -3.0 run function menu:items/create/aimode/mode

function menu:items/private/set_aimode_display