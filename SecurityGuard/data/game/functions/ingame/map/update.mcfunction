# Author: InternetAlien
# Version: 1.15.2

scoreboard players set #mapupdate game 0
scoreboard players set #mapupdate2 game 0
scoreboard players set #mapupdate3 game 0
scoreboard players set #mapupdate4 game 0

execute as @s[tag=upper] store success score #mapupdate game if data entity @s Inventory[{Slot:-106b,tag:{floor:1}}] run replaceitem entity @s weapon.offhand minecraft:orange_dye{display:{Name:'{"text":"Upper Floor","italic":false}'},tag:["killme"],floor:2,CustomModelData:2} 1
execute as @s[tag=lower] store success score #mapupdate2 game if data entity @s Inventory[{Slot:-106b,tag:{floor:2}}] run replaceitem entity @s weapon.offhand minecraft:orange_dye{display:{Name:'{"text":"Lower Floor","italic":false}'},tag:["killme"],floor:1,CustomModelData:1} 1
scoreboard players operation #mapupdate game += #mapupdate2 game

execute as @s[tag=upper] store success score #mapupdate3 game if data entity @s SelectedItem{tag:{floor:1}} run replaceitem entity @s weapon.mainhand minecraft:orange_dye{display:{Name:'{"text":"Upper Floor","italic":false}'},tag:["killme"],floor:2,CustomModelData:2} 1
scoreboard players operation #mapupdate game += #mapupdate3 game
execute as @s[tag=lower] store success score #mapupdate4 game if data entity @s SelectedItem{tag:{floor:2}} run replaceitem entity @s weapon.mainhand minecraft:orange_dye{display:{Name:'{"text":"Lower Floor","italic":false}'},tag:["killme"],floor:1,CustomModelData:1} 1
scoreboard players operation #mapupdate game += #mapupdate4 game

execute if score #mapupdate game matches 1.. run tag @s remove update_map