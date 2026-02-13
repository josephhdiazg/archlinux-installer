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
    "alsa-utils"
    "android-tools"
    "argocd"
    "aws-cli-v2"
    "ark"
    "bind"
    "bluez"
    "bluez-utils"
    "brasero"
    "btrfs-progs"
    "cups"
    "cups-pdf"
    "docker"
    "exfatprogs"
    "firefox"
    "fish"
    "gdm"
    "gimp"
    "github-cli"
    "gnome"
    "gnome-tweaks"
    "go"
    "gparted"
    "helm"
    "ipcalc"
    "iwd"
    "k9s"
    "kubeadm"
    "kubectl"
    "kubeseal"
    "kustomize"
    "libdwarf"
    "libreoffice-fresh-fr"
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
    "1password"
    "battop"
    "brave-bin"
    "chrome-gnome-shell"
    "cilium-cli-bin"
    "cura-bin"
    "grpcurl-bin"
    "helm-docs"
    "hubble-bin"
    "kind"
    "kube-bench-bin"
    "kube-hunter-bin"
    "kubent-bin"
    "kubescape-bin"
    "lighthouse"
    "notion-app"
    "oh-my-zsh-git"
    "slack-desktop"
    "terraform-docs-bin"
    "tfk8s"
    "tflint-bin"
    "tfsec"
    "visual-studio-code-bin"
    "zsh-theme-powerlevel10k-git"
)
