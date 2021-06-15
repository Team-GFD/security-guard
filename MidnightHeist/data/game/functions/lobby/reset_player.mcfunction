# Author: InternetAlien
# Version: 1.15.2

gamemode adventure @s

tp @s @e[type=area_effect_cloud,tag=lobby,limit=1]

clear @s
effect clear @s

xp set @s 0 points
xp set @s 0 levels

team join 2Thief @s[team=3Dead]
team join 2Thief @s[team=4Escaped]

team join 9Spectator @s[team=]

tag @s remove camera_mode
tag @s remove in_cam

scoreboard players reset @s game_id
tag @s remove inGame

scoreboard players set @s leave_game 0