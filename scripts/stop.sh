#!/bin/bash

echo "Stopping Python server..."
pkill -f "python3 -m http.server"

echo "Stopping Tailwind watcher..."
pkill -f "tailwindcss"

echo "All servers stopped!"
