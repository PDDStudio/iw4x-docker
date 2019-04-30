It is possible to run an **IW4x** server on Linux as an container using Docker, but you will have to build the image by yourself.

* **Requirements**
  * Knowledge how to use Docker and Docker Compose
  * [Docker](https://www.docker.com/)
  * [Docker Compose](https://docs.docker.com/compose/)

At first create a few folders

```bash
$ mkdir -p iw4x-dedicated/image
$ mkdir -p iw4x-dedicated/data
$ cd iw4x-dedicated/
```

Then create the following file with the name `Dockerfile` inside of `iw4x-dedicated/image`

```Dockerfile
FROM alpine:3.8
LABEL maintainer="The IW4x Team" \
        com.iw4x.description="Alpine based Wine environment for IW4x dedicated server."

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
ENV IW4X_ARGS -dedicated +set net_port ${IW4X_PORT} +exec server.cfg +party_enable 0 +sv_maxclients 12 +map_rotate

USER iw4x
WORKDIR /iw4x

RUN mkdir -p server

COPY ./init.sh /iw4x/init.sh

VOLUME ["/iw4x/server"]

EXPOSE ${IW4X_PORT}/udp
EXPOSE ${IW4X_PORT}

CMD ["/bin/sh", "/iw4x/init.sh"]
```

And the following file with the name `init.sh` inside of `iw4x-dedicated/image`

```sh
#!/bin/sh -e
cd server/
wine iw4x.exe ${IW4X_ARGS}
```

Do not forget to make init.sh executeable

```bash
$ chmod +x image/init.sh
```

Now create a file called `docker-compose.yml` inside of `iw4x-dedicated` with the following content

```yml
version: "3.7"
services:
  server:
    build:
      context: "./image/"
      args:
        # You can change these matching the ids of your current user, except if you are root.
        - USER_ID=1000
        - GROUP_ID=1000
    image: "iw4x:latest"
    # Will auto-restart your server if it crashes.
    restart: always
    environment:
      # Do not forget to adjust the ports section down below if chaning the port.
      IW4X_PORT: 28960
      # Here you can change the commandline arguments of your server.
      IW4X_ARGS: "-dedicated +set net_port ${IW4X_PORT} +exec server.cfg +party_enable 0 +sv_maxclients 12 +map_rotate"
    volumes:
      # Copy the whole dedicated server into iw4x-dedicated/data/ and make sure the files are owned by the values of ${USER_ID} and ${GROUP_ID}
      - "./data/:/iw4x/server/"
    ports:
      - "28960:28960/udp"
      - "28960:28960"
```

After you have copied the serverfiles into `iw4x-dedicated/data/` and have adjusted the file ownerships you can build your Docker image and start your server

```bash
$ docker-compose build --compress --force-rm --no-cache --pull
$ docker-compose up -d
```

If you want to see the output of your server you can use

```bash
$ docker-compose logs -f
```