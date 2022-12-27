#!/bin/sh

mv /etc/apk/repositories /etc/apk/repositories.bak
echo "http://dl-cdn.alpinelinux.org/alpine/latest-stable/main" >> /etc/apk/repositories
exho "http://dl-cdn.alpinelinux.org/alpine/latest-stable/community" >> /etc/apk/repositories
apk update && apk add git sudo docker docker-compose nano xhost
rc-update add docker boot
