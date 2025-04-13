# Odin

![Build](https://github.com/OnyxJeff/Odin/actions/workflows/build.yml/badge.svg)
![Maintained](https://img.shields.io/badge/maintained-yes-blue)

**Odin** is the DNS deity and VPN sentinel of my homelab, powered by a Raspberry Pi 4.

### 🧰 Services
- **Pi-hole**: Blocks ads, trackers, and telemetry across the network.
- **PiVPN**: Provides secure remote access to internal services.

---

## 📦 Docker Compose

### Pi-hole

```bash
cd docker/pihole
docker-compose up -d
```

Note: If you installed PiHole outside Docker, skip this section and treat it as system-native.

---

### PiVPN

```bash
cd docker/pivpn
docker-compose up -d
```

Note: If you installed PiVPN outside Docker, skip this section and treat it as system-native.

## 💾 Backup
Run the backup script to save Pi-hole configs and VPN keys:

```bash
bash backups/backup.sh
```

📬 Maintained By
Jeff M. • [@OnyxJeff](https://www.github.com/onyxjeff)