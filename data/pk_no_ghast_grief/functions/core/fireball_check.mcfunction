#> pk_no_ghast_grief:core/fireball_check

# Add tags
tag @s add pk.no_gh.checked

# Check if the fireball has been shot by a Ghast
tag @s add pk.temp.current.fireball
execute on origin if entity @s[type=ghast] as @e[type=fireball,tag=pk.temp.current.fireball,distance=..0.1,limit=1] run function pk_no_ghast_grief:core/fireball_pacify
tag @s remove pk.temp.current.fireball