# Author: InternetAlien
# Version: 1.15.2

effect give @a minecraft:saturation 1 0 true

execute if score mode game matches 0 run function game:ingame/modes/robbery/main
execute if score mode game matches 1 run function game:ingame/modes/stealth/main
execute if score mode game matches 2 run function game:ingame/modes/free_for_all/main

function ai:main
