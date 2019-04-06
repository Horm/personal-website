#!/bin/sh

# https://blog.leongwenqing.com/setup-ghost-with-nginx/
docker rm -f ghost
docker run --name ghost \
-p 127.0.0.1:2368:2368 \
-e url=https://blog.horm.cz \
-v /horakmatj/ghost/content:/var/lib/ghost/content \
--restart=always \
-d ghost:2-alpine