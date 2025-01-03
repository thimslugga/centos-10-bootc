#!/bin/bash

curl -Lo /upstream.iso https://repo.almalinux.org/almalinux/9/BaseOS/x86_64/os/images/boot.iso
mkksiso --ks /ks.ks /upstream.iso /output/9.iso
