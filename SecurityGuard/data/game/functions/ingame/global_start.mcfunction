# Author: InternetAlien
# Version: 1.15.2

scoreboard players set state game 1
scoreboard players set stolen game 0
scoreboard players set cooldown game 10
scoreboard players set tick game 0

scoreboard players reset * stolen
scoreboard players reset * stopped

scoreboard players set @a stopped 0
scoreboard players set @a stolen 0

scoreboard players set @a game_id 1

effect clear @a
clear @a
gamemode adventure @a

xp set @a 0 levels
xp set @a 0 points

scoreboard objectives setdisplay list
tag @a add inGame

team modify 2Thief nametagVisibility hideForOtherTeams
team modify 1Guard nametagVisibility hideForOtherTeams
team modify 9Spectator nametagVisibility never

schedule function game:ingame/global_end 8000t replace

execute if score mode game matches 0 run function game:ingame/modes/robbery/start
execute if score mode game matches 1 run function game:ingame/modes/stealth/start
execute if score mode game matches 2 run function game:ingame/modes/free_for_all/start