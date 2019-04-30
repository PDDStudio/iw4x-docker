IW4x dedicated servers have an api endpoint that you can use to get some information about the server. The currently implemented endpoints are documented here.

## Endpoints
* `/serverlist`
* `/info`
* `/list`
* `/map`

## Serverlist
The `/serverlist` endpoint returns a json array of all known servers excluding itself. If you query your own server you will in most cases not get a single of your own hosted servers (as long as they are on the same IP). This is a limitation of how NAT works and cannot be fixed. As a workaround I suggest merging your own servers with the array.

Example: `["x.x.x.x:28960", "x.x.x.x:28960"]`

## Info
The `/info` endpoint returns a json with the server's scoreboard and some server information.

## List/Map
The `/list` & `/map` endpoints are used in our implementation of the mod/map download. The files are downloaded from `/file/<name>`. You can only download active mods and maps from the server.