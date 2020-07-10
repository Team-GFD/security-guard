# Author: SirSheepe
# Version: 1.16+

effect give @s minecraft:saturation 2 1 true
effect give @s minecraft:resistance 2 10 true
effect give @s minecraft:weakness 2 100 true

# This makes sure that their inventory is not modified beyond what we accept

scoreboard players set #tempcount game 0

execute if data entity @s Inventory[{Slot:-106b,tag:{MenuInteractor:1b}}] run scoreboard players add #tempcount game 1
execute if data entity @s Inventory[{Slot:8b,tag:{MenuIcon:1b}}] run scoreboard players add #tempcount game 1

execute if score #tempcount game matches ..1 run clear @s #game:menu_item{MenuItem:1b}

execute if score #tempcount game matches ..1 run replaceitem entity @s[team=2Thief] hotbar.8 minecraft:red_stained_glass_pane{MenuIcon:1b,MenuItem:1b,CustomModelData:1,display:{Name:'{"text":"Thief","color":"red","italic":false}'},tag:["killme"]} 1
execute if score #tempcount game matches ..1 run replaceitem entity @s[team=1Guard] hotbar.8 minecraft:cyan_stained_glass_pane{MenuIcon:1b,MenuItem:1b,CustomModelData:1,display:{Name:'{"text":"Guard","color":"dark_aqua","italic":false}'},tag:["killme"]} 1
execute if score #tempcount game matches ..1 run replaceitem entity @s[team=9Spectator] hotbar.8 minecraft:gray_stained_glass_pane{MenuIcon:1b,MenuItem:1b,CustomModelData:1,display:{Name:'{"text":"Spectator","color":"dark_gray","italic":false}'},tag:["killme"]} 1
execute if score #tempcount game matches ..1 run replaceitem entity @s weapon.offhand minecraft:carrot_on_a_stick{MenuInteractor:1b,MenuItem:1b,CustomModelData:2,display:{Name:'{"text":""}'},tag:["killme"]} 1
