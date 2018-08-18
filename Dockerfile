FROM python:3.6-alpine

MAINTAINER Dani Goland <glossman@gmail.com>

RUN export BUILD_TMP='alpine-sdk git diffutils' \
 && apk update \
 && apk add $BUILD_TMP \
 && adduser -D apk \
 && adduser apk abuild \
 && sudo -iu apk abuild-keygen -a \
 && sudo -iu apk git clone --depth=1 -b pr-llvm-6 https://github.com/xentec/aports \
 && sudo -iu apk sh -xec 'cd aports/main/llvm6; abuild -r' \
 && cp /home/apk/.abuild/*.rsa.pub /etc/apk/keys \
 && apk add /home/apk/packages/main/$(uname -m)/*.apk \
 && deluser --remove-home apk \
 && rm -rf /var/cache/apk/APKINDEX* \
 && apk del --no-cache $BUILD_TMP