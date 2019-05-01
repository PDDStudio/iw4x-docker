# Attempt to host a IW4X Dedicated Server @ Linux VPS

> To be continued...

Further information can be found [here](https://reactiongaming.us/community/resources/categories/mw2-mods.3/).

## Also worth checking out:

- [Wikia](https://callofduty.fandom.com/wiki/Developer_console)
- [TheTechGame](https://www.thetechgame.com/Archives/t=3221243/huge-mw2-dvar-list-managed-code-list.html)
- [GameBanana](https://gamebanana.com/skins/games/3291)
- [IW4x Steam Community](https://steamcommunity.com/groups/IW4X/discussions/0/)
- [ReactionGaming](https://reactiongaming.us/community/resources/categories/mw2-mods.3/)
- [Pre-configured Serverfiles](https://steamcommunity.com/linkfilter/?url=https://cdn.discordapp.com/attachments/219514629703860235/309010603484381186/IW4x_prebuilddediconfig.zip)
- ...

## Building

The following commands are used to build the `iw4x-docker` image:

```sh
# build the docker image
docker-compose build --compress --force-rm --no-cache --pull
# fire up an instance
docker-compose up -d
```
