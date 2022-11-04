#!/bin/sh
if [ ! -f UUID ]; then
  UUID="5250dd07-1b47-445b-8bf8-5ac5ff57e30d"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

