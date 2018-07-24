#!/bin/bash

# Taken from neofetch

while IFS=":" read -r a b; do
	case "$a" in
		"MemTotal") mem_used="$((mem_used+=${b/kB}))"; mem_total="${b/kB}" ;;
		"Shmem") mem_used="$((mem_used+=${b/kB}))" ;;
		"MemFree" | "Buffers" | "Cached" | "SReclaimable")
			mem_used="$((mem_used-=${b/kB}))"
		;;
	esac
done < /proc/meminfo

mem_used="$((mem_used / 1024))"

echo -n "$mem_used"
echo "M"
