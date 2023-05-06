#!/usr/bin/env bash

cd pulse-remote-api
./run.sh & yarn --cwd ../pulse-remote-react start
# uvicorn main:app --host 192.168.1.222 --port 8448 --app-dir pulse-remote-api & yarn --cwd ../pulse-remote-react start
cd -

