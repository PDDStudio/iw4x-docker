FROM alpine:3.8
LABEL com.iw4x.description="Alpine based Wine environment for IW4x dedicated server."

ENV LANG en_US.utf8

# UID and GID of the iw4x user the server is running as.
ARG USER_ID=1000
ARG GROUP_ID=1000

# This hack is necessary, because it is the only way to install 32-bit wine on 64-bit alpine.
RUN echo "x86" > /etc/apk/arch &&\
  apk add --no-cache wine &&\
  echo "x86_64" > /etc/apk/arch &&\
  addgroup -g ${GROUP_ID} iw4x &&\
  adduser -h "/iw4x" -G iw4x -D -u ${USER_ID} iw4x

ENV WINEARCH win32
ENV IW4X_PORT 28960
ENV IW4X_ARGS -dedicated +set net_port ${IW4X_PORT} +exec server.cfg +set playlistFilename "playlists_default.info" +playlist 0 +map_rotate

USER iw4x
WORKDIR /iw4x

RUN mkdir -p server

COPY ./init.sh /iw4x/init.sh
COPY ../config/server.cfg /iw4x/server/server.cfg

VOLUME ["/iw4x/server"]

EXPOSE ${IW4X_PORT}/udp
EXPOSE ${IW4X_PORT}

CMD ["/bin/sh", "/iw4x/init.sh"]
