General server configuration for advanced options.

## Command line parameters
| parameter                        | default                  | valid     | description                                                                               |
|----------------------------------|--------------------------|-----------|-------------------------------------------------------------------------------------------|
| `-dedicated`                     |                          |           | Starts the game as a dedicated server                                                     |
| `-stdout`                        |                          |           | Starts the server without a console, only text output - useful for running server in wine |
| `-console`                       |                          |           | Starts the server in a dedicated console                                                  |
| `+set net_ip <ip>`               | 0.0.0.0                  |           | Configures the ip the server is listening on                                              |
| `+set net_port <int>`            | 28960                    | 1 - 65535 | Configures the port the server is listening on                                            |
| `+set sv_lanonly <int>`          | 0                        | 0 - 1     | Starts server for LAN only                                                                |
| `+exec <string>`                 |                          |           | Loads a given server configuration                                                        |
| `+set fs_game <string>`          |                          |           | Configures which mod to load                                                              |
| `+set party_enable <int>`        | 1                        | 0 - 1     | Configures wether to use the party or match system                                        |
| `+set sv_maxclients <int>`       | 18                       | 1 - 18    | Configures the amount of clients on the server (match only)                               |
| `+map_rotate`                    |                          |           | Starts map rotation (match only)                                                          |
| `+set playlistFilename <string>` | “playlists_default.info” |           | Configures which playlist to load (party only)                                            |
| `+playlist <int>`                |                          | 0 - 99    | Loads playlist number +1 from playlist file (party only)                                  |

## Supported gametypes
| abbreviation | gametype                  |
|--------------|---------------------------|
| war          | Team Deathmatch           |
| dm           | Free-for-all              |
| dom          | Domination                |
| koth         | Headquarters              |
| sab          | Sabotage                  |
| sd           | Search and Destroy        |
| arena        | Arena                     |
| dd           | Demolition                |
| ctf          | Capture the Flag          |
| oneflag      | One-Flag CTF              |
| gtnw         | Global Thermo-Nuclear War |

Additional gametypes are possible with mods.

## Supported maps  
See [List of map names](https://github.com/Jawesome99/IW4x/wiki/List-of-map-names)