#!/bin/sh

set -e

mkdir -p ~/.config/rclone/
echo "
[AI]
type = webdav
pass = $(rclone obscure $PASSWORD)
url = $URL
user = $USERNAME
vendor = other
" > ~/.config/rclone/rclone.conf

sh -c "rclone $*"
