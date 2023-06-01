#> pk_no_ghast_grief:core/fireball_pacify

# Update fireball
tag @s add pk.no_gh.pacified
data modify entity @s ExplosionPower set value 0b

# Summon controller
summon marker ~ ~ ~ {Tags:["pk.no_gh.controller","pk.temp.current.marker"]}
ride @e[type=marker,tag=pk.temp.current.marker,distance=..0.1,limit=1] mount @s
tag @e[type=marker,tag=pk.temp.current.marker,distance=..2,limit=1] remove pk.temp.current.marker