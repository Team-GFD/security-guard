# Author: SirSheepe
# Version: 1.16+

function menu:clear/settings/aicount
schedule function menu:fire 10t replace

execute unless score #aicount menu_id matches 0.. run scoreboard players set #aicount menu_id 1
scoreboard players set #max_aicount menu_id 50
scoreboard players set #min_aicount menu_id 0

scoreboard players set #temp menu_id 5
scoreboard players operation #aicount_offset menu_id = #max_aicount menu_id
scoreboard players operation #aicount_offset menu_id %= #temp menu_id

execute positioned -61.5 127.0 -36.0 run function menu:items/create/aicount/title
execute positioned -61.5 127.0 -36.0 run function menu:items/create/aicount/up_arrow
execute positioned -61.5 127.0 -36.0 run function menu:items/create/aicount/down_arrow
execute positioned -61.5 127.0 -36.0 run function menu:items/create/aicount/left_number
execute positioned -61.5 127.0 -36.0 run function menu:items/create/aicount/right_number

function menu:items/private/set_aicount_number