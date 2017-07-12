# Notes on room_channel and user_socket

## Room Channel
[info] JOIN room:lobby to UnfSwuber.RoomChannel
  Transport:  Phoenix.Transports.WebSocket
  Parameters: %{}



Manual Programmer gathering input follows.

1) showing empty message:: %{}

2) showing process ID matching pid of inspect:: #PID<0.366.0>

3) process alive? true

4) room channel entered and not office channel


5)
```
socket information when joining room:
: %Phoenix.Socket{assigns: %{}, channel: UnfSwuber.RoomChannel,
 channel_pid: #PID<0.366.0>, endpoint: UnfSwuber.Endpoint,
 handler: UnfSwuber.UserSocket, id: nil, joined: false,
 pubsub_server: UnfSwuber.PubSub, ref: nil,
 serializer: Phoenix.Transports.WebSocketSerializer, topic: "room:lobby",
 transport: Phoenix.Transports.WebSocket, transport_name: :websocket,
 transport_pid: #PID<0.364.0>}
 ```
## User Socket
```
: %Phoenix.Socket{assigns: %{}, channel: nil, channel_pid: nil,
 endpoint: UnfSwuber.Endpoint, handler: UnfSwuber.UserSocket, id: nil,
 joined: false, pubsub_server: UnfSwuber.PubSub, ref: nil,
 serializer: Phoenix.Transports.WebSocketSerializer, topic: nil,
 transport: Phoenix.Transports.WebSocket, transport_name: :websocket,
 transport_pid: #PID<0.365.0>}
[info] JOIN room:lobby to UnfSwuber.RoomChannel
  Transport:  Phoenix.Transports.WebSocket
  Parameters: %{}
```

## Office Channel
 setup to verify that room channel is solely being reached
 <br>when entering "chat" route.
