#!/usr/bin/env bash

 uvicorn main:app --host 192.168.1.222 --port 8448 --app-dir pulse-remote-api & yarn --cwd pulse-remote-react start

