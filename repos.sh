#!/bin/sh
git clone https://aronto@bitbucket.org/weblogo-dev/wlsite.git
git clone https://aronto@bitbucket.org/weblogo-dev/weblogo.git
git clone https://aronto@bitbucket.org/weblogo-dev/weblogo_threejs.git
git clone https://aronto@bitbucket.org/weblogo-dev/wlwidgets.git
git clone https://aronto@bitbucket.org/scriptblocks/scriptblocks.git

cd weblogo && git checkout oliver-glow && cd ..
cd wlsite && git checkout sail-ctm && cd ..
cd scriptblocks && git checkout lisa && cd ..
cd wlwidgets && git checkout master && cd ..
cd weblogo_threejs && git checkout sail-ctm && cd ..