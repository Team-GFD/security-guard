# Author: Denniss
# Version: 1.15.2

summon minecraft:endermite ~ ~ ~ {NoAI:1,PlayerSpawned:1b,Lifetime:2200,Tags:["lure_ai"]}

schedule function ai:force_detect/teleport 20t