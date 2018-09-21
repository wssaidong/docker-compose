#!/bin/bash

sudo rm -rf /etc/systemd/system/docker.service.d

sudo mkdir /etc/systemd/system/docker.service.d

echo -e "[Service]\nExecStart=\nExecStart=/usr/bin/dockerd -H tcp://0.0.0.0:5375 -H unix:///var/run/docker.sock" >> /etc/systemd/system/docker.service.d/http-proxy.conf

sudo service start