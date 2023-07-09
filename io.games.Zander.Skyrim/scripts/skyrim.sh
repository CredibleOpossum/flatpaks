#!/bin/sh
cd /app/skyrim
export USER="player"
export WINEPREFIX="/app/prefix/"
/app/runner/bin/wine /app/skyrim/SkyrimSELauncher.exe
