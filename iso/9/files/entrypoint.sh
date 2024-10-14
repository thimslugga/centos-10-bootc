#!/bin/bash

curl -Lo /upstream.iso http://dl.rockylinux.org/pub/rocky/9/isos/x86_64/Rocky-9-latest-x86_64-boot.iso
rm -vf /output/upstream.iso || true
mkksiso --ks /ks.ks /upstream.iso /output/9.iso
