# Author: InternetAlien
# Version: 1.16.1

replaceitem entity @s[team=1Guard] hotbar.7 minecraft:orange_dye{display:{Name:'{"text":"Lower Floor","italic":false}'},tag:["killme"],floor:1,CustomModelData:1} 1
replaceitem entity @s[team=2Thief] hotbar.8 minecraft:orange_dye{display:{Name:'{"text":"Lower Floor","italic":false}'},tag:["killme"],floor:1,CustomModelData:1} 1
tag @s add lower
tag @s remove upper