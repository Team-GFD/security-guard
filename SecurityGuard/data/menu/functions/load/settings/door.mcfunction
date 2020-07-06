# Author: SirSheepe
# Version: 1.16+

function menu:clear/settings/doors
schedule function menu:fire 10t replace

scoreboard players set #doors menu_id 1

execute positioned -61.5 127.0 -30.0 run function menu:items/create/door/title
execute positioned -61.5 127.0 -30.0 run function menu:items/create/door/switch