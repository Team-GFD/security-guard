# Author: SirSheepe
# Version: 1.16+

function menu:clear/tutorial
schedule function menu:fire 10t replace

execute positioned -16.5 127.0 -36.0 run function menu:items/create/tutorial/guard_title
execute positioned -16.5 127.0 -33.0 run function menu:items/create/tutorial/thief_title

execute positioned -16.5 127.0 -36.0 run function menu:items/create/tutorial/go_button_guard
execute positioned -16.5 127.0 -33.0 run function menu:items/create/tutorial/go_button_thief

execute positioned 2.5 128.0 131.5 run function menu:items/create/tutorial/return
execute positioned -98.5 128.0 42.5 run function menu:items/create/tutorial/return