#!/bin/bash
set -o errexit

echo "➡️ Installing PWA dependencies..."
cd packages/pwa
npm install --ignore-scripts

echo "➡️ Building PWA..."
npm run build

echo "➡️ Build complete! Output is ready in packages/pwa/dist"
