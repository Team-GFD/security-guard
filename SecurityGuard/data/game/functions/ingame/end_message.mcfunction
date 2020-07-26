# Author: InternetAlien
# Version: 1.16.1

# DONT FUCKING TOUCH THIS FILE SHEEPE no u :)

#scoreboard players set #max_stolen stolen 0
#scoreboard players operation #max_stolen stolen > @e[scores={stolen=0..}] stolen
#execute as @a[team=2Thief] if score @s stolen = #max_stolen stolen run tag @s add mvp_stolen
#execute as @a[team=3Dead] if score @s stolen = #max_stolen stolen run tag @s add mvp_stolen
#execute as @a[team=4Escaped] if score @s stolen = #max_stolen stolen run tag @s add mvp_stolen
#execute as @e[type=zombified_piglin,team=AI] if score @s stolen = #max_stolen stolen run tag @s add mvp_stolen

#scoreboard players set #max_kills kills 0
#scoreboard players operation #max_kills kills > @a[scores={kills=0..}] kills
#execute as @a[team=1Guard] if score @s kills = #max_kills kills run tag @s add mvp_kills

#team leave @e[tag=mvp_stolen]
#team leave @a[tag=mvp_kills]

#execute if score stolen game >= required game run tellraw @a ["",{"text":"                                                         ","bold":true,"strikethrough":true,"color":"aqua"},{"text":"\n"},{"text":"                    Game Results","bold":true,"color":"blue"},{"text":"\n"},{"text":"\n"},{"text":"                   Winner: ","bold":true,"color":"white"},{"text":"THIEVES","color":"red"},{"text":"\n"},{"text":"\n"},{"text":"              Top Guard: ","color":"white"},{"selector":"@e[tag=mvp_kills,limit=2]","color":"gray"},{"text":" (","color":"gray"},{"score":{"name": "#max_kills", "objective": "kills"}},{"text":" captures)\n","color":"gray"},{"text":"           Top Thief: ","color":"white"},{"selector":"@e[tag=mvp_stolen,limit=2]","color":"gray"},{"text":" (","color":"gray"},{"score":{"name": "#max_stolen", "objective": "stolen"}},{"text":" artifacts)\n","color":"gray"},{"text":"                                                         ","bold":true,"strikethrough":true,"color":"aqua"}]
#execute unless score stolen game >= required game run tellraw @a ["",{"text":"                                                         ","bold":true,"strikethrough":true,"color":"aqua"},{"text":"\n"},{"text":"                    Game Results","bold":true,"color":"blue"},{"text":"\n"},{"text":"\n"},{"text":"                   Winner: ","bold":true,"color":"white"},{"text":"GUARDS","color":"dark_aqua"},{"text":"\n"},{"text":"\n"},{"text":"              Top Guard: ","color":"white"},{"selector":"@e[tag=mvp_kills,limit=2]","color":"gray"},{"text":" (","color":"gray"},{"score":{"name": "#max_kills", "objective": "kills"}},{"text":" captures)\n","color":"gray"},{"text":"           Top Thief: ","color":"white"},{"selector":"@e[tag=mvp_stolen,limit=2]","color":"gray"},{"text":" (","color":"gray"},{"score":{"name": "#max_stolen", "objective": "stolen"}},{"text":" artifacts)\n","color":"gray"},{"text":"                                                         ","bold":true,"strikethrough":true,"color":"aqua"}]

#team join 2Thief @e[tag=mvp_stolen]
#team join 1Guard @a[tag=mvp_kills]

#tag @e[tag=mvp_stolen] remove mvp_stolen
#tag @a[tag=mvp_kills] remove mvp_kills

scoreboard players set #max_stolen stolen 0

scoreboard players operation #max_stolen stolen > @a[team=4Escaped,scores={stolen=0..}] stolen
scoreboard players operation #max_stolen stolen > @e[type=zombified_piglin,tag=piglin_escapee,team=AI,scores={stolen=0..}] stolen

execute as @a[team=4Escaped] if score @s stolen = #max_stolen stolen run tag @s add mvp_candidate
execute as @e[type=zombified_piglin,tag=piglin_escapee,team=AI] if score @s stolen = #max_stolen stolen run tag @s add mvp_candidate
tag @e[tag=mvp_candidate,sort=random,limit=1] add mvp_stolen
tag @e remove mvp_candidate


scoreboard players set #max_kills kills 0
scoreboard players operation #max_kills kills > @a[team=1Guard,scores={kills=0..}] kills
execute as @a[team=1Guard] if score @s kills = #max_kills kills run tag @s add mvp_candidate
tag @a[tag=mvp_candidate,sort=random,limit=1] add mvp_kills
tag @a remove mvp_candidate


scoreboard players set #most_stolen stolen 0

scoreboard players operation #most_stolen stolen > @a[team=2Thief,scores={stolen=0..}] stolen
scoreboard players operation #most_stolen stolen > @a[team=3Dead,scores={stolen=0..}] stolen
scoreboard players operation #most_stolen stolen > @a[team=4Escaped,scores={stolen=0..}] stolen
scoreboard players operation #most_stolen stolen > @e[scores={stolen=0..},type=zombified_piglin,team=AI] stolen

execute as @a[team=2Thief] if score @s stolen = #most_stolen stolen run tag @s add mvp_candidate
execute as @a[team=3Dead] if score @s stolen = #most_stolen stolen run tag @s add mvp_candidate
execute as @a[team=4Escaped] if score @s stolen = #most_stolen stolen run tag @s add mvp_candidate
execute as @e[type=zombified_piglin,team=AI] if score @s stolen = #most_stolen stolen run tag @s add mvp_candidate
tag @e[tag=mvp_candidate,sort=random,limit=1] add most_stolen
tag @e remove mvp_candidate

team modify 2Thief prefix ""
team modify 4Escaped prefix ""
team modify 3Dead prefix ""

team modify AI prefix {"text":"[AI] ","color":"gray"}

team modify 4Escaped color red
team modify 3Dead color red

team modify 1Guard prefix ""

execute if score #winners game matches 0 run tellraw @a {"text":"                                                         ","strikethrough":true,"bold":true,"color":"#3cb0b0"}
execute if score #winners game matches 1 run tellraw @a {"text":"                                                         ","strikethrough":true,"bold":true,"color":"#993434"}

tellraw @a {"text":"                     GAME RESULTS\n","color":"#efefef","bold":true}

execute if score #winners game matches 0 run tellraw @a [{"text":"                          Winners: ","color":"#dfdfdf","bold":false},{"text":"Guards\n","color":"dark_aqua","bold":true}]
execute if score #winners game matches 1 run tellraw @a [{"text":"                         Winners: ","color":"#dfdfdf","bold":false},{"text":"Thieves\n","color":"#e02828","bold":true}]

tellraw @a [{"text":"           Top Guard: ","color":"dark_aqua","bold":true},{"selector":"@a[tag=mvp_kills,limit=1]","color":"aqua","bold":false},{"text":" (","color":"#afafaf","bold":false},{"score":{"name":"#max_kills","objective":"kills"},"color":"#afafaf","bold":false},{"text":" Captures)","color":"#afafaf","bold":false}]

execute if score #max_stolen stolen matches 1.. if entity @e[tag=mvp_stolen] run tellraw @a [{"text":"           Top Thief: ","color":"#d63c3c","bold":true},{"selector":"@e[tag=mvp_stolen,limit=1]","color":"red","bold":false},{"text":" (","color":"#afafaf","bold":false},{"score":{"name":"#max_stolen","objective":"stolen"},"color":"#afafaf","bold":false},{"text":" Artifacts)\n","color":"#afafaf","bold":false}]
execute if score #most_stolen stolen matches 1.. unless entity @e[tag=mvp_stolen] run tellraw @a [{"text":"           Top Thief: ","color":"#d63c3c","bold":true},{"selector":"@e[tag=most_stolen,limit=1]","color":"red","bold":false},{"text":" (","color":"#afafaf","bold":false},{"score":{"name":"#most_stolen","objective":"stolen"},"color":"#afafaf","bold":false},{"text":" Artifacts)\n","color":"#afafaf","bold":false}]

execute if score #most_stolen stolen matches 0 unless entity @e[tag=mvp_stolen] run tellraw @a [{"text":"                     Top Thief: ","color":"#d63c3c","bold":true},{"text":"None\n","color":"#afafaf","bold":false}]

execute if score #max_stolen stolen matches 1.. if entity @e[tag=mvp_stolen] run tellraw @a [{"text":"           Most Stolen: ","color":"#dfdfdf","bold":true},{"selector":"@a[tag=most_stolen,limit=1]","color":"red","bold":false},{"text":" (","color":"#afafaf","bold":false},{"score":{"name":"#most_stolen","objective":"stolen"},"color":"#afafaf","bold":false},{"text":")","color":"#afafaf","bold":false}]

execute if score #winners game matches 0 run tellraw @a {"text":"                                                         ","strikethrough":true,"bold":true,"color":"#3cb0b0"}
execute if score #winners game matches 1 run tellraw @a {"text":"                                                         ","strikethrough":true,"bold":true,"color":"#993434"}

team modify 2Thief prefix {"text":"Thief ","color":"dark_red"}
team modify 4Escaped prefix {"text":"Escaped ","color":"#fabe43"}
team modify 4Escaped color yellow
team modify 3Dead prefix {"text":"Captured ","color":"dark_gray"}
team modify 3Dead color gray
team modify AI prefix ["",{"text":"[AI]","bold":false,"italic":false,"color":"gray"},{"text":" Thief ","color":"dark_red"}]
team modify 1Guard prefix {"text":"Guard ","color":"dark_aqua"}

tag @e remove most_stolen
tag @e remove mvp_kills
tag @e remove mvp_stolen