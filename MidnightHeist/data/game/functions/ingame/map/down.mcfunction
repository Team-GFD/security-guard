# Author: InternetAlien
# Version: 1.15.2

tag @s add lower
tag @s remove upper

scoreboard players set #maptemp game 0
scoreboard players set #maptemp2 game 0

execute store success score #maptemp game if data entity @s Inventory[{Slot:-106b,tag:{floor:2}}] run item replace entity @s weapon.offhand with minecraft:orange_dye{display:{Name:'{"text":"Lower Floor","italic":false}'},tag:["killme"],floor:1,CustomModelData:1} 1
scoreboard players operation #maptemp game += #maptemp2 game

execute store success score #maptemp game if data entity @s SelectedItem{tag:{floor:2}} run item replace entity @s weapon.mainhand with minecraft:orange_dye{display:{Name:'{"text":"Lower Floor","italic":false}'},tag:["killme"],floor:1,CustomModelData:1} 1
scoreboard players operation #maptemp game += #maptemp2 game

execute if score #maptemp game matches 0 run tag @s add update_map