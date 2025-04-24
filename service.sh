#!/system/bin/sh
MODDIR=${0%/*}
CONFIG_DIR="$MODDIR/system/etc/smartappclose"

echo "[SmartAppClose] Service started"

while true; do
    GAMELIST=$(cat "$CONFIG_DIR/gamelist.txt")
    WHITELIST=$(cat "$CONFIG_DIR/whitelist.txt")

    GAME_RUNNING=""
    for GAME in $GAMELIST; do
        PID=$(pidof "$GAME")
        if [ ! -z "$PID" ]; then
            GAME_RUNNING="$GAME"
            break
        fi
    done

    if [ ! -z "$GAME_RUNNING" ]; then
        echo "[+] Game detected: $GAME_RUNNING"
        for pkg in $(cmd package list packages -3 | cut -d: -f2); do
            if [ "$pkg" != "$GAME_RUNNING" ] && ! echo "$WHITELIST" | grep -q "$pkg" && ! echo "$GAMELIST" | grep -q "$pkg"; then
                echo "[KILL] $pkg"
                am force-stop "$pkg"
            fi
        done
    fi
    sleep 5
done
