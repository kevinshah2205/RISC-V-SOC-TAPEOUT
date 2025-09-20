#!/bin/bash

# A script to automate the installation of open-source EDA tools.
# This script will exit immediately if any command fails.
set -e

# --- Initial System Update & Upgrade ---
echo "--- Updating package lists and upgrading system... ---"
sudo apt-get update
sudo apt-get upgrade -y

# --- Installing Icarus Verilog and GTKWave ---
# These are installed first as they are simple package installations.
# The '-y' flag automatically answers 'yes' to any prompts.

echo "--- Installing Icarus Verilog... ---"
sudo apt-get install -y iverilog

echo "--- Installing GTKWave... ---"
sudo apt-get install -y gtkwave

# --- Installing Yosys and its Dependencies ---
echo "--- Installing Yosys dependencies... ---"
sudo apt-get install -y build-essential clang bison flex \
libreadline-dev gawk tcl-dev libffi-dev git graphviz \
xdot pkg-config python3 libboost-system-dev \
libboost-python-dev libboost-filesystem-dev zlib1g-dev make

echo "--- Cloning Yosys repository... ---"
git clone https://github.com/YosysHQ/yosys.git
cd yosys

# THIS IS THE FIX: Initialize and update the required 'abc' submodule
echo "--- Initializing Git submodule... ---"
git submodule update --init

echo "--- Building Yosys (this may take several minutes)... ---"
make config-gcc
make
sudo make install

# Return to the original directory
cd ..

echo ""
echo "------------------------------------------------------"
echo "✅ All tools have been installed successfully!"
echo "------------------------------------------------------"
