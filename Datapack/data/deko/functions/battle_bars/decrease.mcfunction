###########################
#                         #
#    Decrease Function    #
# Decreases the Boss Bars #
#                         #
###########################

execute store result bossbar card_health value run scoreboard players remove @s player_card_hp 10

tellraw @s ["",{"text":"[Debug]:","bold":true,"color":"yellow"},{"text":" Decreased","color":"aqua"},{"text":" the Battle Bars","color":"green"}]