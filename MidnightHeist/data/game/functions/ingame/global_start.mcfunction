# Author: InternetAlien
# Version: 1.15.2

scoreboard players set state game 1
scoreboard players set stolen game 0
scoreboard players set cooldown game 10
scoreboard players set tick game 0

scoreboard players reset * stolen
scoreboard players reset * stopped
scoreboard players reset * kills

scoreboard players set @a stopped 0
scoreboard players set @a stolen 0
scoreboard players set @a kills 0

scoreboard players set @a game_id 1

effect clear @a
clear @a
gamemode adventure @a
effect give @a instant_health 1 10 true

xp set @a 0 levels
xp set @a 0 points

spawnpoint @a -34 120 -130

scoreboard objectives setdisplay list
tag @a add inGame

team modify 2Thief nametagVisibility hideForOtherTeams
team modify 1Guard nametagVisibility hideForOtherTeams
team modify 9Spectator nametagVisibility never

execute as @e[type=minecraft:armor_stand] run data merge entity @s {DisabledSlots:4144959}

summon minecraft:armor_stand 84 94 -46 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["shp_driver"]}
loot replace block 101 109 -24 container.0 loot ai:get_thief_nbt
data modify entity @e[type=minecraft:armor_stand,tag=shp_driver,limit=1] CustomName set from block 101 109 -24 Items[0].tag.ThiefName
data modify entity @e[type=minecraft:villager,tag=shp_driver,limit=1] CustomName set from block 101 109 -24 Items[0].tag.ThiefName

schedule function game:ingame/global_end 8000t replace

function game:ingame/modes/robbery/start