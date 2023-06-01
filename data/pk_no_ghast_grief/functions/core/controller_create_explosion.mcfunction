#> pk_no_ghast_grief:core/controller_create_explosion

# Summon the bomb creeper
summon creeper ~ ~-0.2 ~ {ignited:true,Fuse:0s,Tags:["pk.no_cr.ignore","pk.temp.current.creeper"],Silent:1b}

# Store and change mobGriefing
execute unless score $pk.gamerule.mob_griefing.saved pk.value matches 1 store success score $pk.gamerule.mob_griefing.previous_value pk.value run gamerule mobGriefing false
scoreboard players set $pk.gamerule.mob_griefing.saved pk.value 1
schedule function pk_no_ghast_grief:core/restore_gamerule 2t replace

# Remove controller
kill @s