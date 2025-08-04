# update config with environment variables

# set mqtt broker host
jq '.mqtt.host = env.MQTT_BROKER_HOST' /usr/src/app/store/settings.json | sponge /usr/src/app/store/settings.json

# set mqtt broker port
# use argjson to set port as number
jq --argjson port ${MQTT_BROKER_PORT} '.mqtt.port = $port' /usr/src/app/store/settings.json | sponge /usr/src/app/store/settings.json

# logs
# gateway
jq --argjson value ${GATEWAY_LOG_ENABLED} '.gateway.logEnabled = $value' /usr/src/app/store/settings.json | sponge /usr/src/app/store/settings.json
jq '.gateway.logLevel = env.GATEWAY_LOG_LEVEL' /usr/src/app/store/settings.json | sponge /usr/src/app/store/settings.json
# zwave
jq --argjson value ${ZWAVE_LOG_ENABLED} '.zwave.logEnabled = $value' /usr/src/app/store/settings.json | sponge /usr/src/app/store/settings.json
jq '.zwave.logLevel = env.ZWAVE_LOG_LEVEL' /usr/src/app/store/settings.json | sponge /usr/src/app/store/settings.json

# qos
jq --argjson value ${MQTT_QOS} '.mqtt.qos = $value' /usr/src/app/store/settings.json | sponge /usr/src/app/store/settings.json

# mqtt topic prefix
jq '.mqtt.prefix = env.MQTT_TOPIC_PREFIX' /usr/src/app/store/settings.json | sponge /usr/src/app/store/settings.json

cat /usr/src/app/store/settings.json

node server/bin/www