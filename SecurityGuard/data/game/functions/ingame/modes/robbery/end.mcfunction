# Author: InternetAlien
# Version: 1.15.2

title @a times 1 120 10

execute if score stolen game >= required game run title @a title {"text":"The Thieves Escaped!","color":"red"}
execute if score stolen game >= required game run title @a title {"text":"The required artifacts where stolen","color":"yellow"}
execute if score stolen game >= required game run scoreboard players set #winners game 1

execute if score thieves_left game matches 0 run title @a title {"text":"The Guards Win!","color":"dark_aqua"}
execute if score thieves_left game matches 0 run title @a subtitle {"text":"All thieves were captured","color":"yellow"}
execute if score thieves_left game matches 0 run scoreboard players set #winners game 0

execute unless score stolen game >= required game unless score thieves_left game matches 0 run title @a title {"text":"The Police Arrived!","color":"dark_aqua"}
execute unless score stolen game >= required game unless score thieves_left game matches 0 run scoreboard players set #winners game 0