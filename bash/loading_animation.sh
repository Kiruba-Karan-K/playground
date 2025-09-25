#!/usr/bin/env bash

phases=( "🌑" "🌒" "🌓" "🌔" "🌕" "🌖" "🌗" "🌘" )
moonphase(){
	while true
	do
		for moon in ${phases[@]};
		do 
			echo -ne "\r[$moon] Loading..."
			sleep 0.2
		done
	done
}
moonphase
