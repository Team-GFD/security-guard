# Author: InternetAlien
# Version: 1.15.2

clear @s
effect clear @s

xp set @s 0 points
xp set @s 0 levels

tag @s add camera_mode
team join 9Spectator @s[team=]

scoreboard players set @s game_id 1
tag @s add inGame
