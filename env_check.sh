#!/bin/bash
echo "--- Checking AAE5303 Environment ---"
rosversion -d
python3 --version
pkg-config --modversion opencv4 || pkg-config --modversion opencv
echo "--- Ensuring X11 Forwarding ---"
if [ -z "$DISPLAY" ]; then
    echo "ERROR: DISPLAY environment variable is not set. Check VcXsrv!"
else
    echo "DISPLAY is set to $DISPLAY"
fi
