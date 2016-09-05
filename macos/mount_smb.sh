#!/bin/sh

exec osascript <<EOF
    tell application "Finder"
        open location "smb://guest:@10.0.0.1"
    end tell
EOF
