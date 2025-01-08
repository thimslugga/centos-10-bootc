# Calcite

![Screenshot of the OS](calcite.png)

Calcite is a CentOS Stream bootc-based system with GNOME. It is designed as a usable desktop base image and can even just be rebranded with no other changes.

> [!IMPORTANT]
> The `9` branch is no longer maintained. If you have it installed, please reinstall your OS.

## Download

[Download the ISO](https://nightly.link/CalciteAuthors/calcite/workflows/iso/main/iso.zip), or use your favorite way to provision a device with bootc.

Alternatively if the above link fails you can log in with your GitHub account, go [here](https://github.com/CalciteAuthors/calcite/actions/workflows/iso.yml), click the latest one with the checkmark, and click the small download icon under `Artifacts`, next to `iso`.

## FAQ

### Why is there no web browser?

Open the Software app and download your favorite web browser.

### How do you upgrade this?

Run this in a terminal emulator:

```bash
sudo bootc upgrade
```

Note that it is not supported by us to upgrade between major versions, like 9 ➛ 10.

## Known issues

- A small volume may be shown in Files. This is a loop device critical for the system and we can't hide it.
- Secure Boot may not work. This is caused by a pending [shim review](https://github.com/rhboot/shim-review/issues/454) upstream. Shortly after it is approved Secure Boot will start working.
