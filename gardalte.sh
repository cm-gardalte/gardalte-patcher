#!/bin/bash

# Grab all Samsung Galaxy Light patches

# FRAMEWORK
cd frameworks/av;

# Add Samsung WFD Service -- required for HWComposer
git fetch https://github.com/cm-gardalte/android_frameworks_av.git cm-11.0;
git cherry-pick 3400f1f9ad69bfeb4ced169f5a224338cb2ec7d6;

# camera: Add gardalte camera parameters
git cherry-pick 8c1d5b13cebf4611a3a23843e49e95db3b3a07f4
cd ..; cd ..;
