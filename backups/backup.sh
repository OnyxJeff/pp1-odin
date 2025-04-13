#!/bin/bash

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_DIR="./backups/archive_$TIMESTAMP"
mkdir -p "$BACKUP_DIR"

echo "[+] Backing up Pi-hole configs..."
docker cp pihole:/etc/pihole "$BACKUP_DIR/pihole"
docker cp pihole:/etc/dnsmasq.d "$BACKUP_DIR/dnsmasq.d"

echo "[+] Backing up PiVPN keys (if containerized)..."
docker cp pivpn:/etc/openvpn "$BACKUP_DIR/openvpn"

echo "[+] Backup complete: $BACKUP_DIR"