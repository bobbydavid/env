#!/bin/bash
set -o errexit

# Make sure we're in the root of the repo.
ORIGWD="$PWD"
cd "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Read the directory to install to.
read -p "Enter absolute install location [$HOME]:" INSTALL_LOC
if [ -z "$INSTALL_LOC" ]; then
	INSTALL_LOC="$HOME"
fi

# Verify the directory exists.
if [ ! -d "$INSTALL_LOC" ]; then
	echo "Not a directory: $INSTALL_LOC">&2
	exit 1
fi
echo "Installing to: $INSTALL_LOC"

# Create a backup directory.
BACKUP="$PWD/backup/$(date)"
mkdir -p "$BACKUP"

# For each of the dotfiles...
cd dotfiles
for FILE in $(ls); do
	DFILE=".$FILE"
	DEST="$INSTALL_LOC/$DFILE"
	SRC="$PWD/$FILE"
	# If the destination is already a file or a symlink
	if [[ -f "$DEST" || -h "$DEST" ]]; then
		echo " * Moving $DEST to $BACKUP"
		mv "$DEST" "$BACKUP"
	fi
	echo " * $DEST -> $SRC"
	ln -s "$SRC" "$DEST"
done


