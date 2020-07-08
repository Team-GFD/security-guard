# Author: InternetAlien
# Version: 1.15.2

team join 1Guard @s
tellraw @s [{"text":"You joined the guards!","color":"dark_aqua"}]

replaceitem entity @s hotbar.8 minecraft:cyan_stained_glass_pane{MenuIcon:1b,MenuItem:1b,CustomModelData:1,display:{Name:'{"text":"Guard","color":"dark_aqua","italic":false}'},tag:["killme"]} 1

playsound minecraft:block.comparator.click master @s