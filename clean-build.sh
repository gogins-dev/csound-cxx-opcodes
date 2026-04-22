#!/bin/bash
set -euo pipefail

echo "Creating clean build..."
rm -rf build/*
mkdir -p build
cd build
echo "Configuring..."
cmake ..
echo "Building..."
make
echo "Installing..."
make install
cd ..
echo "Documenting..."
doxygen
cd build
echo "Packaging..."
cpack
ls -ll
echo "Finished clean build."