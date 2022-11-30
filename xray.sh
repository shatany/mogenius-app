#!/bin/sh
if [ ! -f UUID ]; then
  UUID="77600ab1-dadb-4906-b88f-84135508b042"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

