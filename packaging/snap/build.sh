#!/bin/bash
cd "$(dirname "$0")/../.."
sudo snap remove pbtk
rm -f pbtk_*_amd64.snap
snapcraft pack && \
    sudo snap install --dangerous pbtk_*_amd64.snap && \
    sleep 5 &&
    pbtk.jar-extract
pbtk
