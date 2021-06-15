# Author: SirSheepe
# Version: 1.16+

function menu:clear/settings/artifacts
schedule function menu:fire 10t replace

execute unless score #artifacts menu_id matches 0.. run scoreboard players set #artifacts menu_id 45
scoreboard players set #max_artifacts menu_id 93
scoreboard players set #min_artifacts menu_id 10

scoreboard players set #temp menu_id 5
scoreboard players operation #artifact_offset menu_id = #max_artifacts menu_id
scoreboard players operation #artifact_offset menu_id %= #temp menu_id

execute positioned -61.5 127.0 -33.0 run function menu:items/create/artifact/title
execute positioned -61.5 127.0 -33.0 run function menu:items/create/artifact/up_arrow
execute positioned -61.5 127.0 -33.0 run function menu:items/create/artifact/down_arrow
execute positioned -61.5 127.0 -33.0 run function menu:items/create/artifact/left_number
execute positioned -61.5 127.0 -33.0 run function menu:items/create/artifact/right_number

function menu:items/private/set_artifact_number