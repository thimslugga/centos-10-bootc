# Calcite for AlmaLinux

Calcite is an AlmaLinux bootc-based system with GNOME. It is designed for AlmaLinux and others to easily extend it or even just rebrand it, which is why this project doesn't change branding or settings, and is licensed under the 0BSD.

## Notes

- **This project is a preview and subject to large changes.** Here be dragons!
- We remove `/usr/share/console-login-helper-messages/profile.sh` and it's symlink as it would cause errors in terminals that can be ignored.
- GNOME Software can only install flatpaks as we removed PackageKit, this also causes it to show a "name not activatable" error but can be ignored.

## Download

[Download the ISO](https://github.com/charles8191/calcite/releases/latest), or use your favorite way to provision a device with bootc.
