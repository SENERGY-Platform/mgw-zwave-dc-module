FROM zwavejs/zwave-js-ui:11.0.0

ENV MQTT_BROKER_PORT=1883
ENV MQTT_BROKER_HOST=localhost

RUN apk --update add jq
RUN apk --update add moreutils

ADD settings.json /usr/src/app/store/settings.json
ADD start.sh /usr/src/app/start.sh

CMD ["sh", "start.sh"]