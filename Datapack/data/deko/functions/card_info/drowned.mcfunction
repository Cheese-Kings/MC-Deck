#########################################
#                                       #
#        Drowned Info Function          #
# Displays Stats about the Drowned card #
#                                       #
#########################################

tellraw @p ["",{"text":"\n"},{"text":"~~~~~~~~","color":"aqua"},{"text":" Drowned","color":"green"},{"text":" Card","color":"dark_aqua"},{"text":" ~~~~~~~~","color":"aqua"},{"text":"\n"},{"text":"Health: ","color":"red"},{"score":{"name":"drowned","objective":"cardHealth"},"color":"red"},{"text":"\n"},{"text":"Attack: ","color":"gold"},{"score":{"name":"drowned","objective":"cardAttack"},"color":"gold"},{"text":"\n"},{"text":"Defence: ","color":"yellow"},{"score":{"name":"drowned","objective":"cardDefence"},"color":"yellow"},{"text":"\n\n"},{"text":"ID: ","color":"light_purple"},{"score":{"name":"drowned","objective":"cardID"},"color":"light_purple"},{"text":"\n"},{"text":"COMMON","bold":true,"color":"grey"},{"text":"\n"},{"text":"~~~~~~~~~~~~~~~~~~~~~~~~","color":"aqua"},{"text":"\n "}]