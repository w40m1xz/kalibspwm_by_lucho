#!/bin/sh

ip_target=$(cat ~/.config/bin/target | awk '{print $1}')
name_target=$(cat ~/.config/bin/target | awk '{print $2}')

	if [ $ip_target ] && [ $name_target ]; then
	echo "%{F#cf9fff}什%{F#ffffff} $ip_target - $name_target"
	elif [ $(cat ~/.config/bin/target | wc -w) -eq 1 ]; then
	echo "%{F#7dcfff}什%{F#ffffff} $ip_target"
	else
	echo "%{F#7dcfff}ﲅ %{u-}%{F#7dcfff} No target"
	fi

