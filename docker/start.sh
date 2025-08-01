# update config with environment variables

# set mqtt broker host
jq '.mqtt.host = env.MQTT_BROKER_HOST' /usr/src/app/store/settings.json | sponge /usr/src/app/store/settings.json

# set mqtt broker port
# use argjson to set port as number
jq --argjson port ${MQTT_BROKER_PORT} '.mqtt.port = $port' /usr/src/app/store/settings.json | sponge /usr/src/app/store/settings.json

node server/bin/www