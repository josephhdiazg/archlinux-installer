#!/bin/bash

# server or desktop
install_mode="desktop"

################################################################################
# Default variables
################################################################################

# Colors
W='\e[0m'  # White
R='\e[91m' # Red
G='\e[92m' # Green
B='\e[96m' # Blue
Y='\e[93m' # Yellow

# LVM Configuration
# create_home_fs="true"

#lv_swap_size="16G"
#lv_root_size="128G"
#lv_home_size="100%FREE"

swap_size="12G"

# Configuration
keymap="la-latin1"
hostname="archlinux"
timezone="America/Bogota"
locale="en_US"
username="archuser"

# Default packages
declare -a default_packages=(
    "fish"
    "git"
    "btop"
    "openssh"
    "tree"
    "nvim"
    "wget"
)

################################################################################
# Desktop variables
################################################################################

# Desktop specific packages
declare -a desktop_packages=(
    "ark"
    "bluez"
    "bluez-utils"
    "bluez-deprecated-tools"
    "btrfs-progs"
    "cups"
    "cups-pdf"
    "docker"
    "exfatprogs"
    "firefox"
    "fish"
    "gimp"
    "github-cli"
    "gparted"
    "libreoffice-fresh"
    "mimir"
    "minio"
    "minio-client"
    "mpv"
    "networkmanager"
    "nfs-utils"
    "obs-studio"
    "pacman-contrib"
    "packer"
    "prometheus"
    "python"
    "python-numpy"
    "python-matplotlib"
    "python-ipykernel"
    "pipewire"
    "rustup"
    "unrar"
    "unzip"
    "virtualbox"
    "virtualbox-guest-iso"
    "virtualbox-host-dkms"
    "zip"
)

# AUR packages
declare -a aur_packages=(
    "notion-app"
    "visual-studio-code-bin"
)
