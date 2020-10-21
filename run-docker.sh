#!/bin/bash
docker run --name ctfbox -v ~/ctf:/ctf -p 8888:8888 -t -d ctfbox:1.0
