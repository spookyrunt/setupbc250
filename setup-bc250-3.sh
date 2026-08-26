#!/bin/bash
set -euo pipefail

# Verify 8 physical cores are active
CORES=$(lscpu --parse=CORE | grep -v '^#' | sort -u | wc -l)
if [ "$CORES" -ne 8 ]; then
  echo "Only ${CORES} physical cores active (8 required)."
  if [ "$CORES" -eq 6 ]; then
    echo "Please warm-reboot in order to enable 8 cores unlocked."
  fi
  exit 1
fi

# cpu overclock
[ -d bc250-buddy ] || git clone https://github.com/samedayhurt/bc250-buddy
cd bc250-buddy
BC250_ASSUME_YES=1 BC250_OC_FREQ=3900 BC250_OC_VID=1280 ./install.sh cpu

echo ""
echo "Done."
