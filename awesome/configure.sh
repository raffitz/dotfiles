#!/bin/sh

if [ ! -d "~/.config/awesome/themes/bytem" ]; then
	mkdir -p ~/.config/awesome/themes/bytem
fi

echo "Modifying theme \"byte\", originally by mu @ freenode"
cp theme.lua ~/.config/awesome/themes/bytem

echo "Transferring awesome configuration..."
cp rc.lua ~/.config/awesome

echo "Done!"
