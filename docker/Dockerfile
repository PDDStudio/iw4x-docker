FROM alpine:3.8
LABEL com.iw4x.description="Alpine based Wine environment for IW4x dedicated server."

ENV LANG en_US.utf8

# This hack is necessary, because it is the only way to install 32-bit wine on 64-bit alpine.
RUN echo "x86" > /etc/apk/arch \
  && apk add --no-cache wine \
  && echo "x86_64" > /etc/apk/arch \
  && addgroup iw4x \
  && adduser -h "/iw4x" -G iw4x -D iw4x \
  && mkdir -p /iw4x/server

ENV WINEARCH win32
ENV IW4X_PORT=28960
ENV IW4X_CONFIG=/iw4x/server/userraw/server.cfg
ENV IW4X_ARGS="-dedicated +set net_port 28960 +exec server.cfg +party_enable 0"

USER iw4x
WORKDIR /iw4x

COPY ./init.sh init.sh

VOLUME ["/iw4x/server"]

EXPOSE 28960/udp
EXPOSE 28960

CMD ["/bin/sh", "-e", "init.sh"]
