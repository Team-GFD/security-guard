# Author: InternetAlien
# Version: 1.16.1

# DONT FUCKING TOUCH THIS FILE SHEEPE

scoreboard players set #max_stolen stolen 0
scoreboard players operation #max_stolen stolen > @e[scores={stolen=0..}] stolen
execute as @a[team=2Thief] if score @s stolen = #max_stolen stolen run tag @s add mvp_stolen
execute as @a[team=3Dead] if score @s stolen = #max_stolen stolen run tag @s add mvp_stolen
execute as @a[team=4Escaped] if score @s stolen = #max_stolen stolen run tag @s add mvp_stolen
execute as @e[type=zombified_piglin,team=AI] if score @s stolen = #max_stolen stolen run tag @s add mvp_stolen

scoreboard players set #max_kills kills 0
scoreboard players operation #max_kills kills > @a[scores={kills=0..}] kills
execute as @a[team=1Guard] if score @s kills = #max_kills kills run tag @s add mvp_kills

team leave @e[tag=mvp_stolen]
team leave @a[tag=mvp_kills]

execute if score stolen game >= required game run tellraw @a ["",{"text":"                                                         ","bold":true,"strikethrough":true,"color":"aqua"},{"text":"\n"},{"text":"                    Game Results","bold":true,"color":"blue"},{"text":"\n"},{"text":"\n"},{"text":"                   Winner: ","bold":true,"color":"white"},{"text":"THIEVES","color":"red"},{"text":"\n"},{"text":"\n"},{"text":"              Top Guard: ","color":"white"},{"selector":"@e[tag=mvp_kills,limit=2]","color":"gray"},{"text":" (","color":"gray"},{"score":{"name": "#max_kills", "objective": "kills"}},{"text":" captures)\n","color":"gray"},{"text":"           Top Thief: ","color":"white"},{"selector":"@e[tag=mvp_stolen,limit=2]","color":"gray"},{"text":" (","color":"gray"},{"score":{"name": "#max_stolen", "objective": "stolen"}},{"text":" artifacts)\n","color":"gray"},{"text":"                                                         ","bold":true,"strikethrough":true,"color":"aqua"}]
execute unless score stolen game >= required game run tellraw @a ["",{"text":"                                                         ","bold":true,"strikethrough":true,"color":"aqua"},{"text":"\n"},{"text":"                    Game Results","bold":true,"color":"blue"},{"text":"\n"},{"text":"\n"},{"text":"                   Winner: ","bold":true,"color":"white"},{"text":"GUARDS","color":"dark_aqua"},{"text":"\n"},{"text":"\n"},{"text":"              Top Guard: ","color":"white"},{"selector":"@e[tag=mvp_kills,limit=2]","color":"gray"},{"text":" (","color":"gray"},{"score":{"name": "#max_kills", "objective": "kills"}},{"text":" captures)\n","color":"gray"},{"text":"           Top Thief: ","color":"white"},{"selector":"@e[tag=mvp_stolen,limit=2]","color":"gray"},{"text":" (","color":"gray"},{"score":{"name": "#max_stolen", "objective": "stolen"}},{"text":" artifacts)\n","color":"gray"},{"text":"                                                         ","bold":true,"strikethrough":true,"color":"aqua"}]

team join 2Thief @e[tag=mvp_stolen]
team join 1Guard @a[tag=mvp_kills]

tag @e[tag=mvp_stolen] remove mvp_stolen
tag @a[tag=mvp_kills] remove mvp_kills
