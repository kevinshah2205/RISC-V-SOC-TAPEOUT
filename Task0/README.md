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
- [✅ Verification](#-installation-verification)
- [🤝 Contributing](#-contributing)

---

## 🎯 **Overview**

This repository contains step-by-step instructions for installing the essential VLSI design toolchain:

<div align="center">

```
🧠 Yosys (RTL Synthesis) → 📟 Iverilog (Simulation) → 📊 GTKWave (Waveform Analysis)
```

</div>

Each tool serves a specific purpose in the digital design flow:
- **Yosys**: RTL synthesis and optimization
- **Iverilog**: Verilog simulation and compilation  
- **GTKWave**: Waveform visualization and analysis

---

## ⚙️ **System Requirements**

<div align="center">

| **Specification** | **Requirement** |
|-------------------|-----------------|
| **OS** | Ubuntu 20.04+ (or compatible Linux) |
| **RAM** | 4GB+ recommended |
| **Storage** | 2GB+ free space |
| **Internet** | Required for package downloads |

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

![Yosys Make Error](https://github.com/your-username/your-repo/blob/main/assets/yosys_make_error.png)

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

### 🎉 **Installation Summary**

<div align="center">

| **Tool** | **Version** | **Status** | **Function** |
|----------|-------------|------------|--------------|
| 🧠 **Yosys** | 0.57+153 | ✅ **Ready** | RTL Synthesis |
| 📟 **Iverilog** | Latest | ✅ **Ready** | Verilog Simulation |
| 📊 **GTKWave** | v3.3.116 | ✅ **Ready** | Waveform Analysis |

### 🚀 **Your VLSI Development Environment is Ready!**

</div>

---

## 📁 **Repository Structure**

```
├── README.md                 # This installation guide
├── assets/                   # Screenshots and images
│   ├── yosys_make_error.png
│   ├── git_submodule_update.png
│   ├── yosys_installed.png
│   ├── iverilog_installed.png
│   └── gtkwave_installed.png
├── scripts/                  # Installation scripts
│   └── install_tools.sh
└── examples/                 # Sample designs
    ├── basic_gates/
    └── counters/
```

---

## 🤝 **Contributing**

Found an issue or want to improve this guide? 

1. **Fork** this repository
2. **Create** a feature branch: `git checkout -b feature/improvement`
3. **Commit** your changes: `git commit -am 'Add improvement'`
4. **Push** to the branch: `git push origin feature/improvement`
5. **Submit** a Pull Request

---

## 📞 **Support**

If you encounter issues:

- 🐛 **Bug Reports**: Open an issue with detailed error logs
- 💬 **Questions**: Start a discussion in the Issues tab
- 📧 **Contact**: Reach out via GitHub profile

---

## 📄 **License**

This guide is open-source and available under the MIT License. Feel free to use and modify as needed.

---

<div align="center">

**⭐ Star this repo if it helped you!**

[![GitHub stars](https://img.shields.io/github/stars/your-username/your-repo?style=social)](https://github.com/your-username/your-repo/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/your-username/your-repo?style=social)](https://github.com/your-username/your-repo/network/members)

**🔗 Quick Links**

[![Yosys](https://img.shields.io/badge/Yosys-Documentation-blue)](http://www.clifford.at/yosys/)
[![Iverilog](https://img.shields.io/badge/Iverilog-Documentation-green)](http://iverilog.icarus.com/)
[![GTKWave](https://img.shields.io/badge/GTKWave-Documentation-orange)](http://gtkwave.sourceforge.net/)

---

**Built with ❤️ for the VLSI Community**

</div>
