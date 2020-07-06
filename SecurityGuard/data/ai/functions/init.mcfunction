# Author: Denniss
# Version: 1.16.1

scoreboard objectives add AI dummy
scoreboard objectives add AI_killed minecraft.killed:minecraft.villager

team add AI
team modify AI color red
team modify AI prefix ["",{"text":"[AI]","bold":false,"italic":false,"color":"white"},{"text":" Thief ","color":"dark_red"}]
team modify AI collisionRule never
