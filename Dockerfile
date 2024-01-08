ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

RUN apk add --update --no-cache jq
RUN apk add --update --no-cache python3 && \
    pip install --upgrade crcmod paho-mqtt
#&& python3 -m ensurepip           \
#&& pip3 install crcmod paho-mqtt
#RUN python3 -m ensurepip
#RUN pip3 install crcmod paho-mqtt

COPY run.sh monitor.py /

CMD ["/run.sh"]
