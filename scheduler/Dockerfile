FROM balenalib/raspberrypi3-alpine

RUN apk --no-cache add raspberrypi alpine-sdk eudev-dev python3-dev libxrandr-dev swig p8-platform-dev cmake && \
    mkdir -p /tmp/build && \
    cd /tmp/build && \
    wget https://git.alpinelinux.org/aports/plain/community/libcec/APKBUILD && \
    sed -i \
      -e '23a-DRPI_INCLUDE_DIR=/path/to/vc/include' \
      -e '23a-DRPI_LIB_DIR=/path/to/vc/lib' \
    APKBUILD && \
    abuild

COPY scripts /usr/src/
RUN chmod +x /usr/src/*.sh

CMD /usr/src/start.sh
