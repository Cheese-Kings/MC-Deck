########################################
#                                      #
#            Load Function             #
#       Runs when /reload is run       #
#                                      #
########################################

# Setup Card Data Objectives
scoreboard objectives add cardAttack dummy
scoreboard objectives add cardHealth dummy
scoreboard objectives add cardID dummy
scoreboard objectives add cardDefence dummy

# Setup Debug Scoreboard
scoreboard objectives add Debug dummy
scoreboard players add first_time_load_completed Debug 0
scoreboard players add time Debug 0
scoreboard players add day_count Debug 0
scoreboard players add first_arena_placed Debug 0

# Setup Version Scoreboard
scoreboard objectives add Version dummy
scoreboard players add major Version 0
scoreboard players add minor Version 0
scoreboard players add patch Version 0
# Set Version
scoreboard players set major Version 0
scoreboard players set minor Version 1
scoreboard players set patch Version 0

# Setup Click Carrot Scoreboard
scoreboard objectives add click_carrot minecraft.used:minecraft.carrot_on_a_stick

# Install Card Stats
function #deko:install_card_stats

# Setup Card Health Bossbar/Scoreboard
bossbar add card_health ["",{"text":"-[=@=/","color":"yellow"},{"text":" CARD HEALTH","color":"red"},{"text":" \\=@=]-","color":"yellow"}]
bossbar set card_health color red
bossbar set card_health max 150
bossbar set card_health style progress
scoreboard objectives add player_card_hp dummy

# arenaID thingy
scoreboard objectives add arenaID dummy
scoreboard players add currentMax arenaID 0

# Start the 'slow tick' function loop
schedule clear deko:slow_tick
schedule function deko:slow_tick 1s

# Installation Completion
tellraw @a ["",{"text":"[Debug]:","bold":true,"color":"yellow"},{"text":" Deko","color":"gold"},{"text":" datapack is loaded!","color":"aqua"}]
execute if score first_time_load_completed Debug matches 0 run tellraw @a [{"text":"[Debug]:","bold":true,"color":"yellow"},{"text":" First time load completed!","color":"green"}]
# Mark first time load as completed
execute if score first_time_load_completed Debug matches 0 run scoreboard players set first_time_load_completed Debug 1