# syntax=docker/dockerfile:1
ARG MAJOR_VERSION="${MAJOR_VERSION:-stream10}"
FROM quay.io/centos-bootc/centos-bootc:$MAJOR_VERSION

RUN \
    dnf config-manager --set-enabled crb && \
    dnf install epel-release -y && \
    dnf -y -x PackageKit,PackageKit-command-not-found,kmod-kvdo,rootfiles,vdo install \
      grubby \
      centos-backgrounds \
      git \
      wget \
      unzip \
      zip \
      man \
      man-db \
      wireless-regdb \
      wpa_supplicant \
      NetworkManager-wifi \
      NetworkManager-wwan \
      alsa-sof-firmware \
      flatpak \
      gdm \
      gnome-calculator \
      gnome-disk-utility \
      gnome-shell \
      gnome-software \
      gnome-system-monitor \
      gnome-text-editor \
      gnome-tweaks \
      loupe \
      nautilus \
      xdg-utils \
      ptyxis \
      @fonts && \
    dnf remove console-login-helper-messages\* -y && \
    dnf clean all && \
    sed -i 's,ExecStart=/usr/bin/bootc update --apply --quiet,ExecStart=/usr/bin/bootc update --quiet,g' /usr/lib/systemd/system/bootc-fetch-apply-updates.service && \
    mkdir -p /etc/flatpak/remotes.d && \
    curl -o /etc/flatpak/remotes.d/flathub.flatpakrepo https://dl.flathub.org/repo/flathub.flatpakrepo && \
    systemctl set-default graphical.target && \
    bootc container lint
