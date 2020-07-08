# Author: InternetAlien
# Version: 1.15.2

say map up

tag @s add upper
tag @s remove lower

scoreboard players set #maptemp game 0
scoreboard players set #maptemp2 game 0

execute store success score #maptemp game if data entity @s Inventory[{Slot:-106b,tag:{floor:1}}] run replaceitem entity @s weapon.offhand minecraft:orange_dye{display:{Name:'{"text":"Upper Floor","italic":false}'},tag:["killme"],floor:2,CustomModelData:2} 1
scoreboard players operation #maptemp game += #maptemp2 game

execute store success score #maptemp game if data entity @s SelectedItem{tag:{floor:1}} run replaceitem entity @s weapon.mainhand minecraft:orange_dye{display:{Name:'{"text":"Upper Floor","italic":false}'},tag:["killme"],floor:2,CustomModelData:2} 1
scoreboard players operation #maptemp game += #maptemp2 game

execute if score #maptemp game matches 0 run tag @s add update_map