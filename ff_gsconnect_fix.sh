
#!/bin/bash

set -e

HOST_NAME="org.gnome.shell.extensions.gsconnect"
HOST_PATH="$HOME/.local/share/gnome-shell/extensions/gsconnect@andyholmes.github.io/service/nativeMessagingHost.js"

MOZILLA_DIR="$HOME/.mozilla/native-messaging-hosts"
CONFIG_DIR="$HOME/.config/mozilla/native-messaging-hosts"

if [ ! -f "$HOST_PATH" ]; then
    echo "GSConnect native messaging host not found:"
    echo "$HOST_PATH"
    exit 1
fi

mkdir -p "$MOZILLA_DIR"

cat > "$MOZILLA_DIR/$HOST_NAME.json" <<EOF
{
    "name": "$HOST_NAME",
    "description": "GSConnect Native Messaging Host",
    "path": "$HOST_PATH",
    "type": "stdio",
    "allowed_extensions": [
        "gsconnect@andyholmes.github.io"
    ]
}
EOF

echo "Firefox native messaging configuration installed."

if [ -d "$HOME/.config/mozilla" ]; then
    mkdir -p "$CONFIG_DIR"
    cp "$MOZILLA_DIR/$HOST_NAME.json" "$CONFIG_DIR/"
    echo "Mozilla configuration copied to ~/.config/mozilla/"
fi

echo "Installation complete."
