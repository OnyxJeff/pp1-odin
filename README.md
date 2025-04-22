# Odin

![Build](https://github.com/OnyxJeff/Odin/actions/workflows/build.yml/badge.svg)
![Maintained](https://img.shields.io/badge/maintained-yes-blue)

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
- **PiVPN**: Provides secure remote access to internal services.

---

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