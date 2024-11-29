#!/bin/bash

# Kill any Python processes running on port 8000
lsof -ti:8000 | xargs kill -9 2>/dev/null || true

echo "Killed any processes running on port 8000"
