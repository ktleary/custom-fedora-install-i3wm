#!/bin/bash
set -xe

sudo dnf install \
    ack \
    bat \
    bzip2 \
    cargo \
    cmake \
    colordiff \
    dnf-utils \
    evince \
    fd-find \
    gcc \
    git \
    glances \
    glibc-devel \
    glibc-headers \
    gnupg \
    gnupg2 \
    gnupg2-smime \
    gnuplot \
    gparted \
    guake \
    htop \
    jq \
    pass \
    kernel-devel \
    kernel-headers \
    kernel-modules-extra \
    leafpad \
    lsb \
    lsof \
    ltrace \
    lxappearance \
    make \
    microcode_ctl \
    ngrep \
    nmap \
    nmap-ncat \
    perl-Image-ExifTool \
    powerline \
    pwgen \
    pylint \
    python \
    python-devel \
    ripgrep \
    rsync \
    tar \
    thunar \
    tmux \
    tree \
    usbutils \
    uuid \
    wget \
    wireshark \
    xar \
    zathura \
    zbar 

# The following are also good, but come from rpmfusion, install it if you want them
# https://rpmfusion.org/Configuration (be sure to verify GPG signatures)
# exfat-utils
# fuse-exfat
# unrar
# wireshark-gtk
