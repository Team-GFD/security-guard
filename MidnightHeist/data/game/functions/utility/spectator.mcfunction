# Author: InternetAlien
# Version: 1.17+

team join 9Spectator @s
tag @s add inGame
scoreboard players set @s game_id 1

scoreboard players set @s stolen 0
scoreboard players set @s stopped 0
scoreboard players set @s kills 0

effect clear @s
clear @s
gamemode adventure @s
effect give @s instant_health 1 10 true

xp set @s 0 levels
xp set @s 0 points

spawnpoint @s -34 120 -130

tag @s add camera_mode

bossbar set minecraft:stolen players @a[team=!1Guard]

tag @a[team=1Guard] add bossbar_thieves
tag @a[team=9Spectator] add bossbar_thieves
bossbar set minecraft:thieves players @a[tag=bossbar_thieves]
tag @a[tag=bossbar_thieves] remove bossbar_thieves
