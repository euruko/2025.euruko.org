#!/bin/bash

# Initial build
echo "Running initial build..."
npm run build

# Watch for changes in index.html and copy to dist
echo "Starting index.html watcher..."
fswatch -o src/index.html | while read f; do cp src/index.html dist/index.html; done &

# Watch for changes in images and copy to dist
echo "Starting images watcher..."
fswatch -o src/images | while read f; do cp -r src/images dist/; done &

# Start Tailwind watcher in the background
echo "Starting Tailwind watcher..."
npm run watch &

# Start Python server with no-cache headers
echo "Starting local server..."
cd dist && python3 ../scripts/server.py
