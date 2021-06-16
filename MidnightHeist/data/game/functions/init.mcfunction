# Author: InternetAlien
# Version: 1.15.2

team add 2Thief
team modify 2Thief displayName {"text":"Thief","color":"dark_red"}
team modify 2Thief prefix {"text":"Thief ","color":"dark_red"}
team modify 2Thief color red
#team modify 2Thief nametagVisibility hideForOtherTeams
team modify 2Thief seeFriendlyInvisibles true
team modify 2Thief collisionRule always
team modify 2Thief friendlyFire false

team add thief_show
team modify thief_show displayName {"text":"Thief","color":"dark_red"}
team modify thief_show prefix {"text":"Thief ","color":"dark_red"}
team modify thief_show color red
team modify thief_show nametagVisibility always
team modify thief_show seeFriendlyInvisibles true
team modify thief_show collisionRule always
team modify thief_show friendlyFire false

team add 3Dead
team modify 3Dead displayName {"text":"Captured","color":"dark_gray"}
team modify 3Dead prefix {"text":"Captured ","color":"dark_gray"}
team modify 3Dead color gray
team modify 3Dead nametagVisibility always
team modify 3Dead seeFriendlyInvisibles false
team modify 3Dead collisionRule never
team modify 3Dead friendlyFire false

team add 4Escaped
team modify 4Escaped displayName {"text":"Escaped","color":"#fabe43"}
team modify 4Escaped prefix {"text":"Escaped ","color":"#fabe43"}
team modify 4Escaped color yellow
team modify 4Escaped nametagVisibility always
team modify 4Escaped seeFriendlyInvisibles false
team modify 4Escaped collisionRule never
team modify 4Escaped friendlyFire false

team add 1Guard
team modify 1Guard displayName {"text":"Guard","color":"dark_aqua"}
team modify 1Guard prefix {"text":"Guard ","color":"dark_aqua"}
team modify 1Guard color aqua
#team modify 1Guard nametagVisibility hideForOtherTeams
team modify 1Guard seeFriendlyInvisibles false
team modify 1Guard collisionRule never
team modify 1Guard friendlyFire false

team add 9Spectator
team modify 9Spectator displayName {"text":"Spectator","color":"dark_gray"}
team modify 9Spectator color gray
team modify 9Spectator seeFriendlyInvisibles false
team modify 9Spectator friendlyFire false
team modify 9Spectator collisionRule never

scoreboard objectives add game dummy
scoreboard objectives add escape dummy
scoreboard objectives add reveal dummy
scoreboard objectives add player_id dummy
scoreboard objectives add camera_id dummy
scoreboard objectives add game_id dummy
scoreboard objectives add capture_time dummy

scoreboard objectives add leave_game minecraft.custom:minecraft.leave_game
scoreboard objectives add door_tick dummy

scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add stopped deathCount
scoreboard objectives add used_camera minecraft.used:minecraft.carrot_on_a_stick

scoreboard objectives add stolen dummy
scoreboard objectives add kills minecraft.custom:minecraft.player_kills

scoreboard players set max game 0
execute as @e[type=minecraft:area_effect_cloud,tag=artifact] run scoreboard players add max game 1

bossbar add stolen [{"text":"Artifacts Stolen (0/0)","color":"red"}]
bossbar set minecraft:stolen style progress
bossbar set minecraft:stolen color red

bossbar add thieves [{"text":"Thieves Remaining (0/0)","color":"dark_aqua"}]
bossbar set minecraft:thieves style progress
bossbar set minecraft:thieves color blue

gamerule naturalRegeneration false
gamerule keepInventory true
gamerule doTileDrops false
gamerule doMobLoot false

defaultgamemode adventure

execute at @e[type=minecraft:area_effect_cloud,tag=lobby,limit=1,sort=nearest] run spawnpoint @a ~ ~ ~

function ai:init

scoreboard players set op_menu game 0
