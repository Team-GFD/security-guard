# Author: SirSheepe
# Version: 1.16+

title @a times 1 120 10

execute if score esc_time_left game matches 0 run title @a title {"text":"The Thieves Escaped!","color":"red"}
execute if score esc_time_left game matches 0 run title @a subtitle {"text":"The Museum is in emergency lockdown","color":"yellow"}

execute if score esc_time_left game matches 1.. run title @a title {"text":"The Thieves Escaped!","color":"red"}
execute if score esc_time_left game matches 1.. run title @a subtitle ""

kill @e[type=armor_stand,tag=shp_driver]
tag @e remove shp_opening

schedule clear game:ingame/escape_mode/timer

function game:ingame/global_end