#!/bin/bash
# geektime v0.1
# Made by Dr. Waldijk
# See Unix Time, Internet Time and local time.
# Read the README.md for more info.
# By running this script you agree to the license terms.
# -----------------------------------------------------------------------------------
while :; do
    GETIUT=$(date +%s)
    GETILH=$(date -d @$GETIUT +%H)
    GETILM=$(date -d @$GETIUT +%M)
    GETILS=$(date -d @$GETIUT +%S)
    GETILHU=$(date -u -d @$GETIUT -d "1 hour" +%H)
    GETILMU=$(date -u -d @$GETIUT -d "1 hour" +%M)
    GETILSU=$(date -u -d @$GETIUT -d "1 hour" +%S)
    GETIIT=$(echo "($GETILS+($GETILM*60)+($GETILH*3600))/86.4" | bc)
    clear
    echo " Unix Time: $GETIUT"
    echo "     .beat: $GETIIT"
    echo "Local time: $GETILH:$GETILM:$GETILS"
    read -t 15 -s -n1 GETIKEY
    case "$GETIKEY" in
        [qQ])
            echo ""
            clear
            break
        ;;
        *)
            continue
        ;;
    esac
done
