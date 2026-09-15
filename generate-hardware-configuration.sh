#!/usr/bin/env bash

TARGET_DIR="./hosts/target-pc"

if [[ ! -d "$TARGET_DIR" ]]; then
    mkdir -p "$TARGET_DIR"
fi
echo "generating config..."
sudo nixos-generate-config \
    --show-hardware-config \
    --no-filesystems \
    > "$TARGET_DIR/hardware-configuration.nix"
