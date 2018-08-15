#!/bin/bash

# get webui
[[ ! -d /config/flood/.git ]] && (git clone https://github.com/jfurrow/flood.git /config/flood && \
chown -R abc:abc /config/flood)


# opt out for autoupdates
[ "$ADVANCED_DISABLEUPDATES" ] && exit 0

# update webui
cd /config/flood || exit
git pull
chown -R abc:abc /config/www
