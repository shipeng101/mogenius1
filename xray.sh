#!/bin/sh
if [ ! -f UUID ]; then
  UUID="60fe1ff0-b8ee-4653-8f91-b78eccbec221"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

