#!/bin/bash

# Main background color
/usr/bin/xsetroot -solid black

# Default mouse cursor
/usr/bin/xsetroot -cursor_name left_ptr

# Set keyboard behavior
/usr/bin/xset r rate 200 30

# Configure keyboard and some key bindings
setxkbmap 'us,ru' -option 'grp:caps_toggle,compose:ralt,grp_led:scroll,terminate:ctrl_alt_bksp'

# Run trayer
/usr/bin/trayer --edge top --align right --SetDockType true --SetPartialStrut true  --expand true --width 10 --transparent true --tint 0x000000 --alpha 0 --height 17 --distance 500 --distancefrom right &

# Switch on Num Lock
/usr/bin/numlockx on

# Run Dropbox client
/usr/bin/dropbox start

# Run Network Manager applet
/usr/bin/nm-applet

# Run compton
/usr/bin/compton &

# Run mpdas
/usr/bin/mpdas -d

# Run XMonad
/usr/bin/xmonad
