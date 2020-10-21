#!/bin/bash

# ~/ctf is a directory which will be available inside the container
# Port 8888 is exposed for remote debugging
docker run --name ctfbox -v ~/ctf:/ctf -p 8888:8888 -t -d ctfbox:1.0
