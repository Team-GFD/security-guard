# Author: Denniss
# Version: 1.16.1

scoreboard objectives add AI dummy
scoreboard objectives add AI_killed minecraft.killed:minecraft.villager
scoreboard objectives add AI_idle dummy

team add AI
team modify AI color red
team modify AI prefix ["",{"text":"[AI]","bold":false,"italic":false,"color":"gray"},{"text":" Thief ","color":"dark_red"}]
team modify AI collisionRule never
