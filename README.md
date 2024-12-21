# Calcite for AlmaLinux

Calcite is an AlmaLinux bootc-based system with GNOME. It is designed for AlmaLinux and others to easily extend it or even just rebrand it, which is why this project doesn't change branding or settings, and is licensed under the 3-clause BSD license.

> [!IMPORTANT]
> If you have a Calcite installation or derived image from before December 22nd, 2024, please change the source to `ghcr.io/calciteauthors/calcite/9` as soon as possible.

> [!WARNING]
> Setting up an internet connection is mandatory, otherwise installation will fail. If you can't set up an internet connection, do not install this software.

## Notes

- We remove `/usr/share/console-login-helper-messages/profile.sh` and it's symlink as it would cause errors in terminals that can be ignored.

## Download

[Download the ISO](https://github.com/CalciteAuthors/calcite/releases/latest/download/9.iso), or use your favorite way to provision a device with bootc.
