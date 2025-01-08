# centos-10-bootc

This is a CentOS Stream bootc-based system with GNOME. It is designed as a usable desktop base image and can even just be rebranded with no other changes.

## FAQ

### How do you switch to this image?

```bash
sudo bootc switch ghcr.io/centos-workstation/main:stream10
```

### Where can I download the ISO?

You can log in with your GitHub account, go [here](https://github.com/thimslugga/centos-10-bootc/actions/workflows/iso.yml), click the latest one with the checkmark, and click the small download icon under `Artifacts`, next to `iso`.

### How do you upgrade this?

Run this in a terminal emulator:

```bash
sudo bootc upgrade
```

## Erratum

- A small volume may be shown in Files. This is a loop device critical for the system and we can't hide it.
- Secure Boot may not work. This is caused by a pending [shim review](https://github.com/rhboot/shim-review/issues/454) upstream. Shortly after it is approved Secure Boot will start working.
