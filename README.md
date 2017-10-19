# Docker image for [wstunnel](https://github.com/mhzed/wstunnel)

## Starting Docker Image

```shell
$ docker run -d --name=wstunnel --hostname=wstunnel.example.com -p 8022 -p 8080 -restart always --env SERVER=example.com takuyao/wstunnel:latest
```

### Forwarding Ports
* WebSocket 8022 to SERVER:22 for sshd
* WebSocket 8080 to SERVER:3128 for squid

## Client Sample

```shell
$ npm install -g wstunnel
$ wstunnel -t 8022 wss://server.example.com:8022/ &
$ ssh user@localhsot -p 8022
```
