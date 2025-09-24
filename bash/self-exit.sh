#!/usr/bin/env bash

var="I will die in 60 sec"

echo "$var"
echo "Script's PID: $$"

sleep 60
rm -- "$0"

