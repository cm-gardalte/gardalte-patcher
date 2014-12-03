#!/bin/bash

# Grab all Samsung Galaxy Light patches

# FRAMEWORK
cd frameworks/av;

# Add Samsung WFD Service -- required for HWComposer
git fetch https://github.com/cm-gardalte/android_frameworks_av.git cm-12.0;
git cherry-pick d4848efbd5650a48f93a784e5de248a13b830c04
cd ..;

cd native;

# Revert "Remove Parcel::writeIntPtr."
git fetch https://github.com/cm-gardalte/android_frameworks_native.git cm-12.0;
git cherry-pick ce3244f93e8c42ba0f67b449647d2c2e2b5c2f76
cd ..; cd ..;
