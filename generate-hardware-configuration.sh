#!/usr/bin/env bash

TARGET_DIR="./hosts/target-pc"

if [[ "${1:-}" == "vm" ]]; then
    TARGET_DIR="./hosts/vm"
fi

if [[ ! -d "$TARGET_DIR" ]]; then
    mkdir -p "$TARGET_DIR"
fi

echo "Generating config for: $TARGET_DIR"

sudo nixos-generate-config \
    --show-hardware-config \
    --no-filesystems \
    > "$TARGET_DIR/hardware-configuration.nix"
