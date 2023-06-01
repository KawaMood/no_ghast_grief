#> pk_no_ghast_grief:base/tick
# Main tick

# Check fireball
execute as @e[type=fireball,tag=!pk.no_gh.checked,tag=!pk.no_gh.ignore] at @s run function pk_no_ghast_grief:core/fireball_check

# Check if the fireball landed
execute as @e[type=marker,tag=pk.no_gh.controller,predicate=!pk_no_ghast_grief:vehicle/fireball] at @s run function pk_no_ghast_grief:core/controller_create_explosion