FROM quay.io/almalinuxorg/almalinux-bootc:9
RUN dnf -y -x PackageKit,PackageKit-command-not-found,kmod-kvdo,rootfiles,vdo install alsa-sof-firmware \
eog \
firefox \
gdm \
gedit \
git \
gnome-calculator \
gnome-disk-utility \
gnome-screenshot \
gnome-shell \
gnome-software \
gnome-system-monitor \
gnome-terminal \
gnome-terminal-nautilus \
gnome-tweaks \
grubby \
man \
man-db \
nautilus \
NetworkManager-wifi \
NetworkManager-wwan \
unzip \
wget \
wireless-regdb \
wpa_supplicant \
xdg-utils \
zip && \
dnf clean all && \
rm -v /etc/profile.d/console-login-helper-messages-profile.sh /usr/share/console-login-helper-messages/profile.sh && \
systemctl disable sshd.service && \
systemctl set-default graphical.target