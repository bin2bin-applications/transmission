#!/bin/bash
transmission-daemon \
    --port 8080 --auth --allowed "*" --no-incomplete-dir \
    --username "$1" --password "$2" \
    --foreground --watch-dir "/app/torrents-watch" \
    --download-dir "/app/data" --config-dir "/app/config" \
    --dump-settings &> "/app/config/settings.json.reset"