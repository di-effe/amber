#!/bin/sh
#source https://github.com/x70b1/polybar-scripts
#source https://github.com/polybar/polybar-scripts

if ! updates_aur=$(paru -Qum 2> /dev/null | wc -l); then
# if ! updates_aur=$(yay -Qum 2> /dev/null | wc -l); then
# if ! updates_aur=$(cower -u 2> /dev/null | wc -l); then
# if ! updates_aur=$(trizen -Su --aur --quiet | wc -l); then
# if ! updates_aur=$(pikaur -Qua 2> /dev/null | wc -l); then
# if ! updates_aur=$(rua upgrade --printonly 2> /dev/null | wc -l); then
    updates_aur=0
fi

if [ $updates_aur -gt 0 ]; then
    echo %{+o}   Aur: $updates_aur %{-o}
fi