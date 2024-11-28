#!/bin/bash

# Start Tailwind watcher in the background
echo "Starting Tailwind watcher..."
npm run watch &

# Wait a moment for Tailwind to start
sleep 2

# Start the Python server
echo "Starting local server..."
npm run serve
