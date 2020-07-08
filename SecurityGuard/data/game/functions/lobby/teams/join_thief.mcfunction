# Author: InternetAlien
# Version: 1.15.2

team join Thief @s
tellraw @s [{"text":"You joined the thieves!","color":"red"}]

replaceitem entity @s hotbar.8 minecraft:red_stained_glass_pane{MenuIcon:1b,MenuItem:1b,CustomModelData:1,display:{Name:'{"text":"Thief","color":"red","italic":false}'},tag:["killme"]} 1

playsound minecraft:block.comparator.click master @s