Here you can find client specific configuration.
## Installation
You have to fulfill the following requirements to play IW4x:
* An internet connection
* A clean installation of [Call of Duty Modern Warfare 2](http://store.steampowered.com/app/10180)

To install IW4x follow the instructions below:
* Copy the game folder to a separate location
* Download the [Updater](https://iw4xcachep26muba.onion.to/download/updater.exe) or the zip archive from our [website](https://iw4xcachep26muba.onion.to/). Use the mirrors if you want to get your full download speed.
* Updater: Copy the updater to the game folder and start the updater.
* Zip: Extract the zip archive directly in your game folder.
* Start the game with the IW4x executable.

**Multiple clients in the same game folder can lead to crashes.**
## Command line parameters
Those are the client related command line parameters.

| parameter             | description                                                                                                  |
|-----------------------|--------------------------------------------------------------------------------------------------------------|
| `-console`            | Enables the external console.                                                                                |
| `-dedicated`          | Starts as a server.                                                                                          |
| `-dump`               | Dumps raw map entities.                                                                                      |
| `-nosteam`            | Disables Steam integration.                                                                                  |
| `-repair`             | Not implemented yet.                                                                                         |
| `-version`            | Shows game version.                                                                                          |
| `-zonebuilder`        | Starts the IW4x Zonebuilder.                                                                                 |
| `+connect <ip:port>`  | Directly connect to specified server, the default port (`28960`) will be used when no one has been provided. |
| `+set <dvar> <value>` | Provide any dvar to the game, e.g. `+set r_fullscreen 0`.                                                    |

## Color Codes
Color codes allow coloring of any text, mainly player and server names. Modern Warfare 2 itself defines the following colors:

^1 Red.  
^2 Green.  
^3 Yellow.  
^4 Blue.  
^5 Cyan.  
^6 Pink.  
^7 White.  
^8 This color changes depending on what map you’re playing on:
* American maps
  * Dark green.
* Russian maps
  * Dark red.
* British maps
  * Dark blue.

^9 Grey.  
^0 Black.

Additionally, IW4x introduces new color codes for more fanciness:


^: Rainbow color.  
^; A color set by the server using the `sv_customTextColor` dvar.

You can let the color of the nametag above your player model change by using `^^::`!

## Direct3D 9Ex
Direct3D 9Ex is an improved version of Microsoft’s Direct3D 9<sup>[1]</sup>.

In IW4x it has been implemented to reduce the RAM usage of the game. If you have some problems you can simply disable it in the video options.

## Native cursor

This setting allows you to disable the custom game cursor and use the native one your operating system provides, you can change this in the video options.

## Security levels

Every player has an identity with which they can join servers. Normally such an identity would be some sort of login information like a forum login or an ID like you would get on steam. IW4x is not able to use such a way of authentication since it is completely decentralized. Instead, the client generates a random, unique identity for each player if they don’t have one yet.

Whenever a player gets banned, their identity gets added to a server-side blacklist which prevents them from joining with that identity again. In order to circumvent such a ban, a player can then create a new identity.

This is where the security level comes in: It determines the level of complexity an identity has to fulfill before it can be seen as an identity that is allowed to join the server. This implies that the client has to do a certain amount of work. The higher the complexity, the more work a client will statistically have to do.

Of course, a client is still able to pregenerate identities to prepare for instant ban evasion. This is where the server admin can reconfigure the security level on their server to a higher value, which automatically invalidates all identities below that level, requiring all clients trying to join to recalculate a valid identity token.

The security level is set to 23 by default, which in average leads to a waiting time of about 30 seconds for the identity token to be calculated.

<sup>[1] MSDN: [Direct3D 9Ex Improvements](https://msdn.microsoft.com/en-us/library/windows/desktop/ee890072(v=vs.85).aspx)