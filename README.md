# Call of Duty: Modern Warfare 2 - IW4X Dedicated Server

![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/pddstudio/iw4x-docker.svg?logo=docker)
![Docker Pulls](https://img.shields.io/docker/pulls/pddstudio/iw4x-docker.svg?logo=linux&logoColor=white)
![GitHub license](https://img.shields.io/github/license/PDDStudio/iw4x-docker.svg?logo=github)
![Build Status](https://drone.pddstudio.io/api/badges/PDDStudio/iw4x-docker/status.svg)

> A dockerized version of IW4X's serverfiles - to easily host _(multiple)_ dedicated server instances on a Linux VPS.

Further information can be found [here](https://reactiongaming.us/community/resources/categories/mw2-mods.3/).

## Also worth checking out:

- [Wikia](https://callofduty.fandom.com/wiki/Developer_console)
- [TheTechGame](https://www.thetechgame.com/Archives/t=3221243/huge-mw2-dvar-list-managed-code-list.html)
- [GameBanana](https://gamebanana.com/skins/games/3291)
- [IW4x Steam Community](https://steamcommunity.com/groups/IW4X/discussions/0/)
- [ReactionGaming](https://reactiongaming.us/community/resources/categories/mw2-mods.3/)
- [Pre-configured Serverfiles](https://steamcommunity.com/linkfilter/?url=https://cdn.discordapp.com/attachments/219514629703860235/309010603484381186/IW4x_prebuilddediconfig.zip)
- [IW4X Server Documentation](https://xlabs.dev/support_iw4x_server)
- [IW4X Console Commands](https://xlabs.dev/console_commands)

## Building

The following commands are used to build the `iw4x-docker` image:

```sh
# build the docker image
docker-compose build --compress --force-rm --no-cache --pull
# fire up an instance
docker-compose up -d
```

## Usage

- Download Serverfiles
- Adjust config file
- Start compose stack
- Connect to server

## Serverfiles

This docker image is shipped without any server files.  
The server files have to be installed separately and need to be mounted via `/iw4x/server` volume.  
If you use the `docker-compose` setup included in this repository the serverfiles are expected to be located at `./data/server`.
