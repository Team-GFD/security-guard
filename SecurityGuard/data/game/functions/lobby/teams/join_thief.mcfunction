# Author: InternetAlien
# Version: 1.15.2

team join 2Thief @s
tellraw @s [{"text":"You joined the thieves!","color":"red"}]

item replace entity @s hotbar.8 with minecraft:red_stained_glass_pane{MenuIcon:1b,MenuItem:1b,CustomModelData:1,display:{Name:'{"text":"Thief","color":"red","italic":false}'},tag:["killme"]} 1

playsound minecraft:block.comparator.click master @s