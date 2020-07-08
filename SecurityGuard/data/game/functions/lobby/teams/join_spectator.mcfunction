# Author: InternetAlien
# Version: 1.15.2

team join 9Spectator @s
tellraw @s [{"text":"You joined spectator!","color":"gray"}]

replaceitem entity @s hotbar.8 minecraft:gray_stained_glass_pane{MenuIcon:1b,MenuItem:1b,CustomModelData:1,display:{Name:'{"text":"Spectator","color":"dark_gray","italic":false}'},tag:["killme"]} 1

playsound minecraft:block.comparator.click master @s
