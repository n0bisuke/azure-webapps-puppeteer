#!/bin/sh

apt update \
    && apt install -y \
      ca-certificates \
      fonts-liberation \
      gconf-service \
      libappindicator1 \
      libasound2 \
      libatk1.0-0 \
      libatk-bridge2.0-0 \
      libc6 \
      libcairo2 \
      libcups2 \
      libdbus-1-3 \
      libexpat1 \
      libfontconfig1 \
      libgcc1 \
      libgconf-2-4 \
      libgdk-pixbuf2.0-0 \
      libglib2.0-0 \
      libgtk-3-0 \
      libnspr4 \
      libnss3 \
      libpango-1.0-0 \
      libpangocairo-1.0-0 \
      libstdc++6 \
      libx11-6 \
      libx11-xcb1 \
      libxcb1 \
      libxcomposite1 \
      libxcursor1 \
      libxdamage1 \
      libxext6 \
      libxfixes3 \
      libxi6 \
      libxrandr2 \
      libxrender1 \
      libxss1 \
      libxtst6 \
      lsb-release \
      unzip \
      wget \
      xdg-utils \
    && mkdir /noto && cd /noto \
    && wget https://noto-website.storage.googleapis.com/pkgs/NotoSansCJKjp-hinted.zip \
    && unzip NotoSansCJKjp-hinted.zip \
    && mkdir -p /usr/share/fonts/noto \
    && cp *.otf /usr/share/fonts/noto \
    && chmod 644 -R /usr/share/fonts/noto/ \
    && fc-cache -fv \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /noto