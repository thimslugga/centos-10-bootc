#!/bin/bash

cd /
curl -Lo upstream.iso https://mirror.stream.centos.org/10-stream/BaseOS/x86_64/os/images/boot.iso
mkksiso -a container kickstart upstream.iso output/calcite-10.iso
cd -
