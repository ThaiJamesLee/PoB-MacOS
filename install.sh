#!/bin/bash
POB_GH_LINK=https://github.com/hsource/pobfrontend/releases/latest/download/PathOfBuilding.zip

cd ~/Downloads

echo "GET ${POB_GH_LINK}"
curl -L $POB_GH_LINK --output PathOfBuilding.zip

echo "Extract..."
unzip -o PathOfBuilding.zip -d pob_tmp

echo "Move PathOfBuilding to Applications..."
mv -f pob_tmp/PathOfBuilding.app /Applications

echo "Clean up..."
rm -rf pob_tmp
