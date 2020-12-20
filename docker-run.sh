#!/bin/bash
docker run -d \
        --name UDPXY \
        --network host \
        --restart always \
        lordpedal/udpxy
