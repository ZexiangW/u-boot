#!/usr/bin/env bash
set -euo pipefail

if [[ -z "${ARCH:-}" || -z "${CROSS_COMPILE:-}" ]]; then
  echo "Please source envsetup.sh first." >&2
  exit 1
fi

make mx6ull_xirang_defconfig
make u-boot.imx -j 8
