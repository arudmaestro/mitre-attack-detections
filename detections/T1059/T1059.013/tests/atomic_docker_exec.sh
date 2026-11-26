#!/usr/bin/env bash
# Test for T1059.013 - run id inside a temporary container. Run in a lab/test system with Docker.
docker run -d --name t1059013test alpine sleep 30 > /dev/null
docker exec t1059013test id
docker rm -f t1059013test > /dev/null
