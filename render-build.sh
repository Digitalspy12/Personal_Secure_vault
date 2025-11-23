#!/bin/bash

# 1. Install root dependencies WITHOUT running postinstall
npm install --ignore-scripts

# 2. Install dependencies only for PWA
cd packages/pwa
npm install --ignore-scripts

# 3. Build PWA
npm run build
