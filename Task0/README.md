# 🚀 VLSI Tool Setup Guide: Yosys, Iverilog & GTKWave

<div align="center">

![VLSI](https://img.shields.io/badge/VLSI-Tool%20Setup-blue?style=for-the-badge&logo=chip)
![Status](https://img.shields.io/badge/Status-Complete-success?style=for-the-badge)
![Ubuntu](https://img.shields.io/badge/Ubuntu-20.04+-orange?style=for-the-badge&logo=ubuntu)

</div>

Welcome to the **VLSI Tool Setup Guide**! This README documents the complete installation process of essential open-source VLSI design tools: **Yosys**, **Iverilog**, and **GTKWave**. Follow this guide to set up your digital design environment with detailed troubleshooting steps.

---

## 📋 **Table of Contents**

- [🎯 Overview](#-overview)
- [⚙️ System Requirements](#️-system-requirements)  
- [🧠 Yosys Installation](#-yosys-installation---rtl-synthesis-tool)
- [📟 Iverilog Installation](#-iverilog-installation---verilog-simulator)
- [📊 GTKWave Installation](#-gtkwave-installation---waveform-viewer)
- [🔧 Troubleshooting](#-troubleshooting-guide)
- [✅ Installing Verification](#-installation-verification)

---

## 🎯 **Overview**

This repository contains step-by-step instructions for installing the essential VLSI design toolchain:

Each tool serves a specific purpose in the digital design flow:
- **Yosys**: RTL synthesis and optimization
- **Iverilog**: Verilog simulation and compilation  
- **GTKWave**: Waveform visualization and analysis

---

## ⚙️ **System Requirements**

<div align="center">

| **Specification** | **Minimum Requirement** | **My System** |
|-------------------|-------------------------|---------------|
| **OS** | Ubuntu 20.04+ (or compatible Linux) | Ubuntu 24.04.3 LTS |
| **RAM** | 4GB+ recommended | 16GB DDR5 RAM |
| **Storage** | 2GB+ free space | 100GB NVMe SSD |
| **CPU** | Dual-core processor | 12 cores, 16 threads |
| **Internet** | Required for package downloads | ✅ Available |

</div>

---

## 🧠 **Yosys Installation - RTL Synthesis Tool**

### 📖 **About Yosys**
Yosys is a framework for RTL synthesis that converts Verilog HDL designs into gate-level netlists with various optimization capabilities.

### 🛠️ **Installation Steps**

```bash
# Step 1: Update system packages
sudo apt-get update

# Step 2: Clone Yosys repository
git clone https://github.com/YosysHQ/yosys.git
cd yosys

# Step 3: Install make (if not present)
sudo apt install make

# Step 4: Install required dependencies
sudo apt-get install build-essential clang bison flex \
    libreadline-dev gawk tcl-dev libffi-dev git \
    graphviz xdot pkg-config python3 libboost-system-dev \
    libboost-python-dev libboost-filesystem-dev zlib1g-dev

# Step 5: Configure for GCC
make config-gcc

# Step 6: Build Yosys
make

# Step 7: Install system-wide
sudo make install
```

### ⚠️ **Common Error & Solution**

**Error Encountered:**
```
make: *** [Makefile:811: check-git-abc] Error 1
```

![Yosys Make Error](<img width="1112" height="151" alt="Screenshot from 2025-09-20 14-19-31" src="https://github.com/user-attachments/assets/fd29e2f4-a9ec-43f0-9eba-1e15f79e2ad4" />)

**Solution:**
```bash
# Initialize Git submodules
git submodule update --init
```

![Git Submodule Fix](https://github.com/your-username/your-repo/blob/main/assets/git_submodule_update.png)

**Then continue with:**
```bash
make
sudo make install
```

### ✅ **Verification**

```bash
yosys
```

![Yosys Installed](https://github.com/your-username/your-repo/blob/main/assets/yosys_installed.png)

**Expected Output:** Yosys command prompt with version information.

---

## 📟 **Iverilog Installation - Verilog Simulator**

### 📖 **About Iverilog**
Icarus Verilog is an IEEE-1364 compliant Verilog simulator that supports both behavioral and synthesizable Verilog designs.

### 🛠️ **Installation Steps**

```bash
# Step 1: Update system packages
sudo apt-get update

# Step 2: Install Iverilog
sudo apt-get install iverilog
```

### ✅ **Verification**

```bash
iverilog
```

![Iverilog Installed](https://github.com/your-username/your-repo/blob/main/assets/iverilog_installed.png)

**Expected Output:** Command usage information confirming successful installation.

---

## 📊 **GTKWave Installation - Waveform Viewer**

### 📖 **About GTKWave**
GTKWave is a fully-featured waveform viewer for analyzing digital simulation results with support for multiple file formats.

### 🛠️ **Installation Steps**

```bash
# Step 1: Update system packages
sudo apt-get update

# Step 2: Install GTKWave
sudo apt install gtkwave
```

### ✅ **Verification**

```bash
gtkwave
```

![GTKWave Installed](https://github.com/your-username/your-repo/blob/main/assets/gtkwave_installed.png)

**Expected Output:** GTKWave GUI opens successfully.

---

## 🔧 **Troubleshooting Guide**

### Common Issues & Solutions

<div align="center">

| **Issue** | **Tool** | **Solution** | **Status** |
|-----------|----------|--------------|------------|
| Git submodule error | 🧠 Yosys | `git submodule update --init` | ✅ Resolved |
| Missing dependencies | 🧠 Yosys | Install build-essential packages | ✅ Resolved |
| Permission denied | All | Use `sudo` for system installation | ✅ Resolved |
| Package not found | All | Run `sudo apt-get update` first | ✅ Resolved |

</div>

### 💡 **Pro Tips**

- **Always update packages** before installation: `sudo apt-get update`
- **Check dependencies** before building from source
- **Use Git submodules** for projects with external dependencies  
- **Verify installations** after each tool setup

---

## ✅ **Installation Verification**

### Quick Verification Commands

```bash
# Test Yosys
yosys -V

# Test Iverilog  
iverilog -V

# Test GTKWave
gtkwave --version
```

### 🎯 **Tool Installation Status**

<div align="center">

| **Tool** | **Version** | **Installation** | **Primary Purpose** |
|----------|-------------|------------------|---------------------|
| 🧠 **Yosys** | 0.57+153 | ✅ **Completed** | RTL Synthesis & Optimization |
| 📟 **Iverilog** | Latest Stable | ✅ **Completed** | Verilog HDL Simulation |
| 📊 **GTKWave** | v3.3.116 | ✅ **Completed** | Digital Waveform Analysis |

### 🚀 **VLSI Toolchain Successfully Configured!**

</div>

---

## 📁 **Repository Structure**

```
├── README.md                 # This installation guide
├── files/                    # Screenshots and documentation
│   ├── yosys_make_error.png
│   ├── git_submodule_update.png
│   ├── yosys_installed.png
│   ├── iverilog_installed.png
│   └── gtkwave_installed.png
└── scripts/                  # Installation scripts
    └── install_tools.sh
```
