# Author: SirSheepe
# Version: 1.16+

scoreboard players remove esc_time_left game 1
execute store result bossbar minecraft:stolen value run scoreboard players get esc_time_left game
bossbar set minecraft:stolen name [{"text":"Time Left ","color":"red"},{"score":{"name":"esc_time_left","objective":"game"}},{"text":"s"}]

execute if score esc_time_left game matches 1.. if score thieves_left game matches 1.. run schedule function game:ingame/escape_mode/timer 1s
execute if score esc_time_left game matches 1.. if score thieves_left game matches 0 if score thieves_escaped game matches 1.. run function game:ingame/escape_mode/end_good
execute if score esc_time_left game matches 1.. if score thieves_left game matches 0 if score thieves_escaped game matches 0 run function game:ingame/escape_mode/end_bad

execute if score esc_time_left game matches 0 if score thieves_escaped game matches 1.. run function game:ingame/escape_mode/end_good
execute if score esc_time_left game matches 0 if score thieves_escaped game matches 0 run function game:ingame/escape_mode/end_bad