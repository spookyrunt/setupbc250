# setupbc250
Run both scripts one by one after [BIOS flashing](https://elektricm.github.io/amd-bc250-docs/bios/flashing) on Bazzite. This project includes two BC-250 install scripts setting up:
- bc250_memcfg — lower VRAM split (VRAM minimum) to 512MB
- Disable amd_iommu (kernel parameter)
- Quiet boot as default (kernel parameter)
- Expand shared GPU memory limits (14.5–14.75GB, gttsize/ttm kernel parameters)
- Install cyan-skillfish-governor-smu and radeontop
- ACPI fix — C-States only (P-States excluded)
- Set GPU governor clock cap to 2000MHz / 1000mV
- CPU 8-core unlock (bc250-core-cu-unlock)
- GPU from 24 to up to 40 CU/WGP unlock (bc250-cu-live-manager)
- CPU overclock to 3850MHz (bc250-buddy)
- Install zswap + btrfs swapfile instead of zram
- Hardware watchdog + crash forensics heartbeat (bc250-buddy)
