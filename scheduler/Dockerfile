FROM balenalib/raspberrypi3-alpine

RUN apk --no-cache add libcec

COPY scripts /usr/src/
RUN chmod +x /usr/src/*.sh

CMD /usr/src/start.sh
