# Author: SirSheepe
# Version: 1.16+

effect give @s minecraft:saturation 2 1 true
effect give @s minecraft:resistance 2 10 true
effect give @s minecraft:weakness 2 10 true
effect give @s minecraft:instant_health 2 10 true

# This makes sure that their inventory is not modified beyond what we accept

replaceitem entity @s[team=Thief] hotbar.8 minecraft:red_stained_glass_pane{MenuIcon:1b,MenuItem:1b,CustomModelData:1,display:{Name:'{"text":"Thief","color":"red","italic":false}'},tag:["killme"]} 1
replaceitem entity @s[team=Guard] hotbar.8 minecraft:cyan_stained_glass_pane{MenuIcon:1b,MenuItem:1b,CustomModelData:1,display:{Name:'{"text":"Guard","color":"dark_aqua","italic":false}'},tag:["killme"]} 1
replaceitem entity @s[team=Spectator] hotbar.8 minecraft:gray_stained_glass_pane{MenuIcon:1b,MenuItem:1b,CustomModelData:1,display:{Name:'{"text":"Spectator","color":"dark_gray","italic":false}'},tag:["killme"]} 1
replaceitem entity @s weapon.offhand minecraft:carrot_on_a_stick{MenuInteractor:1b,MenuItem:1b,CustomModelData:2,display:{Name:'{"text":""}'},tag:["killme"]} 1

scoreboard players set #tempcount game 0

execute store result score #tempcount game run clear @s minecraft:red_stained_glass_pane{MenuIcon:1b} 0
execute if score #tempcount game matches 2.. run clear @s minecraft:red_stained_glass_pane{MenuIcon:1b}

execute store result score #tempcount game run clear @s minecraft:cyan_stained_glass_pane{MenuIcon:1b} 0
execute if score #tempcount game matches 2.. run clear @s minecraft:cyan_stained_glass_pane{MenuIcon:1b}

execute store result score #tempcount game run clear @s minecraft:gray_stained_glass_pane{MenuIcon:1b} 0
execute if score #tempcount game matches 2.. run clear @s minecraft:gray_stained_glass_pane{MenuIcon:1b}

execute store result score #tempcount game run clear @s minecraft:carrot_on_a_stick{MenuInteractor:1b} 0
execute if score #tempcount game matches 2.. run clear @s minecraft:carrot_on_a_stick{MenuInteractor:1b}

replaceitem entity @s[team=Thief] hotbar.8 minecraft:red_stained_glass_pane{MenuIcon:1b,MenuItem:1b,CustomModelData:1,display:{Name:'{"text":"Thief","color":"red","italic":false}'},tag:["killme"]} 1
replaceitem entity @s[team=Guard] hotbar.8 minecraft:cyan_stained_glass_pane{MenuIcon:1b,MenuItem:1b,CustomModelData:1,display:{Name:'{"text":"Guard","color":"dark_aqua","italic":false}'},tag:["killme"]} 1
replaceitem entity @s[team=Spectator] hotbar.8 minecraft:gray_stained_glass_pane{MenuIcon:1b,MenuItem:1b,CustomModelData:1,display:{Name:'{"text":"Spectator","color":"dark_gray","italic":false}'},tag:["killme"]} 1
replaceitem entity @s weapon.offhand minecraft:carrot_on_a_stick{MenuInteractor:1b,MenuItem:1b,CustomModelData:2,display:{Name:'{"text":""}'},tag:["killme"]} 1
