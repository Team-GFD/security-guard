# Author: SirSheepe
# Version: 1.16+

title @a times 1 40 20

execute if score esc_time_left game matches 0 run title @a title {"text":"The Guards Win!","color":"dark_aqua"}
execute if score esc_time_left game matches 0 run title @a subtitle {"text":"The Museum is in emergency lockdown","color":"red"}

execute if score esc_time_left game matches 1.. run title @a title {"text":"The Guards Win!","color":"dark_aqua"}
execute if score esc_time_left game matches 1.. run title @a subtitle {"text":"All thieves were captured","color":"red"}

function game:ingame/global_end