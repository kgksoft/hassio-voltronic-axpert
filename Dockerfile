ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8
ENV PIP_ROOT_USER_ACTION=ignore

RUN /bin/ash -c 'apk add --no-cache \
    jq \
    python3 \
    \
    && pip3 install --upgrade --root-user-action=ignore pip crcmod paho-mqtt;'
#RUN apk add --no-cache python3
#RUN ""
#FROM homeassistant/home-assistant
#RUN pip install nefit-client
#&& python3 -m ensurepip           \
#&& pip3 install crcmod paho-mqtt
#RUN python3 -m ensurepip
#RUN pip3 install crcmod paho-mqtt

COPY run.sh monitor.py /

CMD ["/run.sh"]
