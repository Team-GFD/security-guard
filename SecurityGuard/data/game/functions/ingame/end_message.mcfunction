# Author: InternetAlien
# Version: 1.16.1

scoreboard players set #max_stolen stolen 0
scoreboard players operation #max_stolen stolen > @e[scores={stolen=0..}] stolen
execute as @e if score @s stolen = #max_stolen stolen run tag @s add mvp_stolen

scoreboard players set #max_kills kills 0
scoreboard players operation #max_kills kills > @a[scores={kills=0..}] kills
execute as @a if score @s kills = #max_kills kills run tag @s add mvp_kills

execute if score stolen game >= required game run tellraw @a ["",{"text":"                                                         ","bold":true,"strikethrough":true,"color":"aqua"},{"text":"\n"},{"text":"               Security Guard II","bold":true,"color":"blue"},{"text":"\n"},{"text":"\n"},{"text":"                Winner: ","bold":true,"color":"white"},{"text":"THIEVES","color":"red"},{"text":"\n"},{"text":"\n"},{"text":"              Top Guard: ","color":"white"},{"selector":"@a[tag=mvp_kills]","color":"gray"},{"text":" ("},{"score":{"name": "#max_kills", "objective": "kills"}},{"text":" captures)\n"},{"text":"             Top Thief:","color":"white"},{"selector":"@a[tag=mvp_stolen]","color":"gray"},{"text":" ("},{"score":{"name": "#max_stolen", "objective": "stolen"}},{"text":" artifacts)\n"},{"text":"                                                         ","bold":true,"strikethrough":true,"color":"aqua"}]
execute unless score stolen game >= required game run tellraw @a ["",{"text":"                                                         ","bold":true,"strikethrough":true,"color":"aqua"},{"text":"\n"},{"text":"               Security Guard II","bold":true,"color":"blue"},{"text":"\n"},{"text":"\n"},{"text":"                Winner: ","bold":true,"color":"white"},{"text":"GUARDS","color":"dark_aqua"},{"text":"\n"},{"text":"\n"},{"text":"              Top Guard: ","color":"white"},{"selector":"@a[tag=mvp_kills]","color":"gray"},{"text":" ("},{"score":{"name": "#max_kills", "objective": "kills"}},{"text":" captures)\n"},{"text":"             Top Thief:","color":"white"},{"selector":"@a[tag=mvp_stolen]","color":"gray"},{"text":" ("},{"score":{"name": "#max_stolen", "objective": "stolen"}},{"text":" artifacts)\n"},{"text":"                                                         ","bold":true,"strikethrough":true,"color":"aqua"}]

tag @e[tag=mvp_stolen] remove mvp_stolen
tag @a[tag=mvp_kills] remove mvp_kills

execute at @e[tag=AI_nbt] run kill @e[tag=AI,distance=..5]
