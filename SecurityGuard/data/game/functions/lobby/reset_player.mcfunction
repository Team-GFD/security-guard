# Author: InternetAlien
# Version: 1.15.2

tp @e[type=area_effect_cloud,tag=lobby,limit=1]

clear @s
effect clear @s

xp set @s 0 points
xp set @s 0 levels

team join Thief @s[team=Dead]

tag @s remove camera_mode
tag @s remove in_cam

scoreboard players reset @s game_id
tag @s remove inGame
