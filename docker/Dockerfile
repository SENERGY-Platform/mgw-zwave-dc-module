FROM zwavejs/zwave-js-ui:11.0.0

ENV MQTT_BROKER_PORT=1883
ENV MQTT_BROKER_HOST=localhost
ENV MQTT_QOS=1
ENV MQTT_TOPIC_PREFIX=zwave2mqtt
ENV GATEWAY_LOG_ENABLED=true
ENV GATEWAY_LOG_LEVEL=debug
ENV ZWAVE_LOG_ENABLED=true
ENV ZWAVE_LOG_LEVEL=debug

RUN apk --update add jq
RUN apk --update add moreutils

ADD settings.json /usr/src/app/store/settings.json
ADD start.sh /usr/src/app/start.sh

CMD ["sh", "start.sh"]