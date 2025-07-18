# Odin

![Build Status](https://github.com/OnyxJeff/pp1-odin/actions/workflows/build.yml/badge.svg)
![Maintenance](https://img.shields.io/maintenance/yes/2025.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)
![GitHub release](https://img.shields.io/github/v/release/OnyxJeff/pp1-odin)
![Issues](https://img.shields.io/github/issues/OnyxJeff/pp1-odin)

**Odin** is the DNS deity and VPN sentinel of my homelab, powered by a Raspberry Pi 4.

## 📁 Repo Structure

```text
odin/
├── .github/workflows/    # CI for YAML validation
├── backups/              # Exported or example snapshot files
├── docker/               # YAML-based -darr stack applications
└── README.md             # You're reading it!
```

---

## 🧰 Services
- **Pi-hole**: Blocks ads, trackers, and telemetry across the network.
- **NGinxRP**: Provides DNS entries for internal services, providing them with URLs to navigate rather than IP addresses.

### System-Native Install

#### Pi-hole

```bash
curl -sSL https://install.pi-hole.net | bash
```
Note: This will install the latest version of Pi-Hole.

#### PiVPN

```bash
curl -L https://install.pivpn.io | bash
```
Note: This will install the latest version of PiVPN.

---

### 📦 Docker Compose

#### Pi-hole

```bash
cd docker/pihole
docker-compose up -d
```

Note: If you installed PiHole outside Docker, skip this section and treat it as system-native.

#### PiVPN

```bash
cd docker/pivpn
docker-compose up -d
```

Note: If you installed PiVPN outside Docker, skip this section and treat it as system-native.

---

## 💾 Backup
Choose the backup script that coincides with your installation type (Docker or System-Native), remove the ".docker" or ".native" and run the backup script to save Pi-hole configs and VPN keys:

```bash
bash backups/backup.sh
```

---

📬 Maintained By
Jeff M. • [@OnyxJeff](https://www.github.com/onyxjeff)