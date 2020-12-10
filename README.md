# TWRP Device Tree - BLU G90 Pro - G0370WW
Releasing first file Readme about device in the 24/11/2020.

05/12/2020 - First test with TWRP: flashed and starting. Fixing some info.

Download file TWRPv3.4.0-0: soon

## About Device
![BLU G90 Pro G0370WW](https://fdn2.gsmarena.com/vv/pics/blu/blu-g90-pro-3.jpg)

### Specifications

Component Type | Details
-------:|:-------------------------
CPU     | Octa-core (2x2.05 GHz Cortex-A76 & 6x2.0 GHz Cortex-A55)
Platform | Mediatek MT6785 Helio G90T (12 nm)
GPU     | Mali-G76 MC4 (Arm Mali-G76 3EMMC4)
Architecture | 64 bit
Memory  | 4 GB RAM
Shipped Android Version | 	Android 10 Q
Storage | 128 GB - UFS_2.1 - eMMC 5.1
Battery | 5100 mAh |  9V-2A
Height | 162 mm
Width | 77 mm
Thickness | 10.1 mm
Weight | 215 g
Display | 6.5" (103.7 cm²) - 19:9
Screen resolution | 1080 x 2340 pixels, Full HD+ Infinity Display
Pixel density | 396 PPI
Primary Camera |48 MP, f/1.8, (wide), 1/2.0", 0.8µm, PDAF + 8 MP, f/2.2, (ultrawide) + 2 MP, f/2.2, (macro) + 2 MP, f/2.2, (depth); LED flash
Video | 8.29 MP; 3840p, 2160p 4K video, 30fps
Secondary Camera | 32 MP, f/2.0, (wide)
Video | 2.07 MP; 1920p, 1080p video, 30fps
Wireless | Quick / Fast charging - 10W (Qi) + 18W Ultra Quick Charger
Wifi | Yes, IEEE802.11 a/b/g/n, Supports 5G Wi-Fi Signal / Wi-Fi Direct / Wi-Fi Display
Bluetooth | v4.1, A2DP, LE
USB Type-C | Yes, 2.0, reversible connector
NFC | No
Network support | Both SIM slots are compatible with 4G/LTE
SIM size | SIM1 - SIM2: Nano
CARD slot |	microSD, up to 128 GB (microSDXC;microSDHC)
SD slot |	SIM1 + SIM2 + microSD
Sensors | Fingerprint (rear-mounted), Accelerometer, Gyro, Proximity, Compass

Network | Bands
-------:|:-------------------------
2G | GSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2
3G | HSDPA B1 (2100), B2 (1900), B4 (1700 AWS), B5 (850), B8 (900)
4G | LTE band 1 (2100), 2 (1900), 3 (1800), 4 (1700/2100 AWS 1), 5 (850), 7 (2600), 8 (900), 12 (700), 13 (700), 17 (700), 28 (700)
VoLte | Yes
Speed | HSPA 42.2/5.76 Mbps, LTE-A (2CA) Cat6 300/50 Mbps

**This device tree can be used to build TWRP for BLU G90 Pro - G0370WW**


## Build Instructions
```sh
export ALLOW_MISSING_DEPENDENCIES=true
. build/envsetup.sh
lunch omni_G0370WW-eng
mka recoveryimage
```

## About Camera & case
![BLU G90 Pro Camera](https://i.imgur.com/OKVdZ77.jpg)
