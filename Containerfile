FROM ghcr.io/charles8191/rocky-bootc-monthly/9
ARG DNF_EXCLUSIONS="PackageKit,PackageKit-command-not-found,kmod-kvdo,rootfiles,vdo"
RUN dnf -y -x ${DNF_EXCLUSIONS} install alsa-sof-firmware
RUN dnf -y -x ${DNF_EXCLUSIONS} install eog
RUN dnf -y -x ${DNF_EXCLUSIONS} install firefox
RUN dnf -y -x ${DNF_EXCLUSIONS} install gdm
RUN dnf -y -x ${DNF_EXCLUSIONS} install gedit
RUN dnf -y -x ${DNF_EXCLUSIONS} install git
RUN dnf -y -x ${DNF_EXCLUSIONS} install gnome-calculator
RUN dnf -y -x ${DNF_EXCLUSIONS} install gnome-disk-utility
RUN dnf -y -x ${DNF_EXCLUSIONS} install gnome-screenshot
RUN dnf -y -x ${DNF_EXCLUSIONS} install gnome-shell
RUN dnf -y -x ${DNF_EXCLUSIONS} install gnome-software
RUN dnf -y -x ${DNF_EXCLUSIONS} install gnome-system-monitor
RUN dnf -y -x ${DNF_EXCLUSIONS} install gnome-terminal
RUN dnf -y -x ${DNF_EXCLUSIONS} install gnome-terminal-nautilus
RUN dnf -y -x ${DNF_EXCLUSIONS} install gnome-tweaks
RUN dnf -y -x ${DNF_EXCLUSIONS} install grubby
RUN dnf -y -x ${DNF_EXCLUSIONS} install man
RUN dnf -y -x ${DNF_EXCLUSIONS} install man-db
RUN dnf -y -x ${DNF_EXCLUSIONS} install nautilus
RUN dnf -y -x ${DNF_EXCLUSIONS} install NetworkManager-wifi
RUN dnf -y -x ${DNF_EXCLUSIONS} install NetworkManager-wwan
RUN dnf -y -x ${DNF_EXCLUSIONS} install wget
RUN dnf -y -x ${DNF_EXCLUSIONS} install wireless-regdb
RUN dnf -y -x ${DNF_EXCLUSIONS} install wpa_supplicant
RUN rm -v /etc/profile.d/console-login-helper-messages-profile.sh /usr/share/console-login-helper-messages/profile.sh
RUN systemctl disable sshd.service
RUN systemctl set-default graphical.target
