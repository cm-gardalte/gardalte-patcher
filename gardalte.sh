#!/bin/bash

# Grab all Samsung Galaxy Light patches

# FRAMEWORK
cd frameworks/av;

# Add Samsung WFD Service -- required for HWComposer
git fetch https://github.com/cm-gardalte/android_frameworks_av.git cm-11.0;
git cherry-pick 3400f1f9ad69bfeb4ced169f5a224338cb2ec7d6
cd ..; cd ..;
