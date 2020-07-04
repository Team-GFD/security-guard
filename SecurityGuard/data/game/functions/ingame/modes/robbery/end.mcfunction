# Author: InternetAlien
# Version: 1.15.2

title @a times 1 40 20

execute if score stolen game >= required game run title @a title {"text":"The Thieves Escaped!","color":"red"}
execute if score thieves_left game matches 0 run title @a title {"text":"The Guards Won!","color":"dark_aqua"}
execute unless score stolen game >= required game unless score thieves_left game matches 0 run title @a title {"text":"The Police Arrived!","color":"dark_aqua"}
title @a subtitle ""
