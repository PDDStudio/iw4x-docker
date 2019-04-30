When playing IW4x you may notice the serverlist occasionally showing less servers or showing different amounts of servers for your friends.

This is due to IW4x's decentralisation. Under normal circumstances you would receive a list of servers from one or multiple master servers, like so:  
![](https://i.imgur.com/psZZcbb.png)  
IW4x however uses a decentralized system in which servers directly inform the client of their presence and send their information, like so:  
![](https://i.imgur.com/EI09Eew.png)  
So instead of having one incoming connection delivering a server list, you have multiple, potentially hundreds of simultaneous incoming connections sending information to your client.

### So why does this cause problems?  
Seeing few servers is almost always a problem of your router; old, low-end routers may not be able to handle the amount of incoming connections at once, some might even crash due to that; newer, high-end routers may see the amount of incoming connections as a [DDoS](https://en.wikipedia.org/wiki/Denial-of-service_attack) attempt, therefore blocking them.  
This will cause servers to not appear. IW4x developers attempted to fix this by slowing down the requests, spreading them out over a longer time period, this is where the Dvars `net_serverQueryLimit` and `net_serverFrames` come in.

`net_serverQueryLimit` defines how many servers are queried per query frame. A higher number means more servers simultaneously sending their information to you. A value of `10` will mean that ten servers are sending their information to you per query frame.  
`net_serverFrames` defines the amount of query frames per second. A value of `1` will mean that there is only one query frame per real time second.  
Together, these two Dvars form a formula you can use to calculate the amount of servers being queried per second:  
`(value of serverQueryLimit) * (value of serverFrames) / 1 second`  
The default values for these Dvars using the fix DLL file are 10 each. This means that there are `10 * 10 / 1 second = 100 servers / second` requested. The values are higher without the DLL.  
Values of `3` on each will mean that there are `3 * 3 / 1 second = 9 servers / second` requested, significantly lowering the amount of incoming connections and helping with the server list.