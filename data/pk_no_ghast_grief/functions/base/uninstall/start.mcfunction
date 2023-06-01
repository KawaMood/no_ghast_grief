#> pk_no_ghast_grief:base/uninstall/start

# Remove features specific to the data pack
function pk_no_ghast_grief:base/uninstall/helpers/remove_specific_features

# Remove features common to all KawaMood data packs if there is no KawaMood data pack installed anymore
execute unless data storage pk.common:data Datapacks[{}] run function pk_no_ghast_grief:base/uninstall/helpers/remove_common_features

# Logs
tellraw @a [{"text": "Uninstalled ","color": "yellow"},{"text": "KawaMood's No Ghast Grief","color": "aqua","bold": true},{"text": " successfully.\nYou can now safely remove the data pack from the \"datapacks/\" folder of your world","color": "yellow"}]