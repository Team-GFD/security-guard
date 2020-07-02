# Author: InternetAlien
# Version: 1.15.2

team add Thief
team modify Thief prefix {"text":"Thief ","color":"dark_red"}
team modify Thief color red
team modify Thief nametagVisibility hideForOtherTeams
team modify Thief seeFriendlyInvisibles true
team modify Thief collisionRule always
team modify Thief friendlyFire false

team add Dead
team modify Dead prefix {"text":"Dead ","color":"dark_red"}
team modify Dead color red
team modify Dead nametagVisibility hideForOtherTeams
team modify Dead seeFriendlyInvisibles false
team modify Dead collisionRule never
team modify Dead friendlyFire false

team add Guard
team modify Guard prefix {"text":"Guard ","color":"dark_aqua"}
team modify Guard color aqua
team modify Guard nametagVisibility hideForOtherTeams
team modify Guard seeFriendlyInvisibles false
team modify Guard collisionRule never
team modify Guard friendlyFire false

team add Spectator
team modify Spectator color gray

scoreboard objectives add game dummy
scoreboard objectives add escape dummy
scoreboard objectives add reveal dummy
scoreboard objectives add player_id dummy
scoreboard objectives add camera_id dummy
scoreboard objectives add game_id dummy
scoreboard objectives add capture_time dummy

scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add stoped deathCount
scoreboard objectives add used_camera minecraft.used:minecraft.carrot_on_a_stick

scoreboard objectives add stolen dummy

bossbar add stolen [{"text":"Artifacts Stolen","color":"red"}]
bossbar set minecraft:stolen style progress
bossbar set minecraft:stolen color red

gamerule naturalRegeneration false
gamerule keepInventory true
gamerule doTileDrops false
gamerule doMobLoot false

defaultgamemode adventure

function ai:init
