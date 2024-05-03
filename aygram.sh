#!/bin/bash

git clone --recursive https://github.com/AyuGram/AyuGramDesktop.git tdesktop
./tdesktop/Telegram/build/prepare/linux.sh

docker run --rm -it \
    -v $PWD:/usr/src/tdesktop \
    tdesktop:centos_env \
    /usr/src/tdesktop/Telegram/build/docker/centos_env/build.sh \
    -D TDESKTOP_API_ID=2040 \
    -D TDESKTOP_API_HASH=b18441a1ff607e10a989891a5462e627
