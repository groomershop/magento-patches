find . -iname '*.patch' | while read fname ; do grep -v '^diff --git' "$fname" | grep -v '^index [a-f0-9]*\.\.' > "$fname.fixed"; mv "$fname.fixed" "$fname"; done