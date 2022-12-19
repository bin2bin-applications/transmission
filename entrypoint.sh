#!/bin/bash
if [ ! -f "/app/config/settings.json" ]; then
    mkdir -p "/app/torrents-watch" "/app/data" "/app/config"
    transmission-daemon \
        --port 8080 --auth --allowed "*" --no-incomplete-dir \
        --username "admin" --password "$(cat /proc/sys/kernel/random/uuid)" \
        --foreground --watch-dir "/app/torrents-watch" \
        --download-dir "/app/data" --config-dir "/app/config" \
        --dump-settings &> "/app/config/settings.json.bkp"
    mv "/app/config/settings.json.bkp" "/app/config/settings.json"
fi

if [ -f "/app/config/settings.json.reset" ]; then
    mv "/app/config/settings.json.reset" "/app/config/settings.json"
fi

transmission-daemon --foreground --config-dir "/app/config"