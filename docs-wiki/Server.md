Quick setup and advanced configuration for IW4x servers.

>⚠️ Warning  
You can only host up to 15 servers on the same IP address, additional servers will be rejected by the decentralized node system. This has been implemented as a security measurement to prevent flooding the server list.

## Server types
### Party
A party<sup>[1]</sup> is a dedicated lobby, which uses a playlist for its configuration and will take players back into a lobby after each map. The advantage of the party system is:

* adjust classes and killstreak rewards without leaving the server
* vote to skip next map
* map rotation is random

Because of that, a party server is ideal for a public game servers.

>⚠️ Warning  
Party servers are very buggy and unstable, they **will** crash often and even with scripts the server might not properly restart. It is advised to not use party servers and stick to match servers instead!

### Match
A match is a normal dedicated server, which uses a map rotation, ideal for private servers.

## Requirements
You have to fulfill the following requirements to be able to host a server for IW4x:

* An internet connection
* A clean installation of [Call of Duty: Modern Warfare 2](http://store.steampowered.com/app/10180)
* [Notepad++](https://notepad-plus-plus.org/) to edit config files
* [7-ZIP](http://www.7-zip.org/) to extract the [client files]()
* Basic knowledge about your current operating system
* Common sense (in case of a public server)

## Quick instructions for hosting a match server
>😡 Warning  
If you forget to remove the `<` and `>` around the port, tech support is legally allowed to call you retarded.  
<sup><sup>In case you didn't get that, this means remove them.</sup></sup>
* Copy your ‘Call of Duty Modern Warfare 2’ folder to another location
* Extract the client files into your copied folder
* Download the [📥 server.cfg](http://emosewaj.eu/download/server_match.cfg) and place it in your ‘players’ folder, edit it to your needs
* Download the [📥 startserver.bat](http://emosewaj.eu/download/startserver_match.bat) and place it into the root, edit it as needed
* Forward the TCP and UDP port you've specified in `+set net_port <port>`
* Run the batch and have fun!

## Quick instructions for hosting a party server
* Copy your ‘Call of Duty Modern Warfare 2’ folder to another location
* Extract the client files into your copied folder
* Download the [📥 server.cfg](http://emosewaj.eu/download/server_party.cfg) and place it in your ‘players’ folder, edit it to your needs
* Download the [📥 startserver.bat](http://emosewaj.eu/download/startserver_party.bat) and place it into the root, edit it as needed
* Forward the TCP and UDP port you've specified in `+set net_port <port>`
* Run the batch and have fun!

## File mirrors
If the above links don't work, you can download Zip files containing the files you need from [here](https://github.com/Jawesome99/IW4x/releases/tag/0.6.0-server)!

Alternatively, you can download the files individually from [here](https://github.com/Jawesome99/IW4x/tree/master/fileMirrors)

## Advanced server configuration
Further information for advanced server configuration:

[General](https://github.com/Jawesome99/IW4x/wiki/Advanced-general-server-configuration)  
[Match server](https://github.com/Jawesome99/IW4x/wiki/Advanced-match-server-configuration)  
[Party server](https://github.com/Jawesome99/IW4x/wiki/Advanced-party-server-configuration)  
[Docker](https://github.com/Jawesome99/IW4x/wiki/Docker)  
[API](https://github.com/Jawesome99/IW4x/wiki/IW4x-Server-API)  
[Gameserver file optimization](https://github.com/Jawesome99/IW4x/wiki/Gameserver-file-optimization)  
[List of map names](https://github.com/Jawesome99/IW4x/wiki/List-of-map-names)

<sup>[1] A server starts per default as a party.</sup>