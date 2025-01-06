FROM quay.io/centos-bootc/centos-bootc:stream10
RUN set -x && \
    dnf install epel-release -y && \
    dnf config-manager --set-enabled crb && \
    dnf -y -x PackageKit,PackageKit-command-not-found,kmod-kvdo,rootfiles,vdo install \
      alsa-sof-firmware \
      centos-backgrounds \
      flatpak \
      gdm \
      git \
      gnome-calculator \
      gnome-disk-utility \
      gnome-shell \
      gnome-software \
      gnome-system-monitor \
      gnome-text-editor \
      gnome-tweaks \
      grubby \
      loupe \
      man \
      man-db \
      nautilus \
      NetworkManager-wifi \
      NetworkManager-wwan \
      ptyxis \
      unzip \
      wget \
      wireless-regdb \
      wpa_supplicant \
      xdg-utils \
      zip \
      @fonts && \
    dnf remove console-login-helper-messages\* -y && \
    dnf clean all && \
    sed -i 's,ExecStart=/usr/bin/bootc update --apply --quiet,ExecStart=/usr/bin/bootc update --quiet,g' /usr/lib/systemd/system/bootc-fetch-apply-updates.service && \
    systemctl disable sshd.service && \
    mkdir -p /etc/flatpak/remotes.d && \
    curl -o /etc/flatpak/remotes.d/flathub.flatpakrepo https://dl.flathub.org/repo/flathub.flatpakrepo && \
    systemctl set-default graphical.target
