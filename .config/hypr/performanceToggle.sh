#!/usr/bin/env sh

HYPRGAMEMODE=$(hyprctl getoption animations:enabled | awk 'NR==1{print $2}')
if [ "$HYPRGAMEMODE" = 1 ] ; then
    hyprctl --batch "\
        keyword animations:enabled 0;\
        keyword decoration:drop_shadow 0;\
        keyword decoration:blur:enabled 0;\
        keyword general:gaps_in 0;\
        keyword general:gaps_out 0;\
        keyword general:border_size 1;\
        keyword decoration:rounding 0"
    notify-send -e -h string:x-canonical-private-synchronous:Performance -u low "Performance" "Low latency and battery saver mode" -t 4000   
    exit
fi
notify-send -e -h string:x-canonical-private-synchronous:Performance -u low "Performance" "Fancy mode" -t 4000
hyprctl reload
