#!/bin/sh
transmission-daemon \
    --port 8080 --auth --allowed "*" --no-incomplete-dir \
    --username "admin" --password "$(cat /proc/sys/kernel/random/uuid)" \
    --foreground --watch-dir "/app/torrents-watch" \
    --download-dir "/app/data" --config-dir "/app/config" \
    --dump-settings &> "/app/config/settings.json.reset"
