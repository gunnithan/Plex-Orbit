# plex-orbit

## What This Repository Is
This repository contains the complete, production-ready Docker Compose stack powering my self-hosted media server environment. It encapsulates the full lifecycle of automated media curation—from secure traffic routing and indexer management to automated downloads, library tracking, metrics logging, and custom display dashboards.

Instead of managing separate services manually, this entire infrastructure is defined as code, allowing for rapid deployment, reliable container updates, and isolated network paths.

---

## The Architecture Stack

The services are split into logical layers to ensure a seamless, automated workflow:

### 1. The Core Media Engine
* **Plex:** The central media server handling transcoding and streaming to client devices.
* **Tautulli:** Monitoring and tracking engine used to log stream statistics, watch history, and trigger notifications.

### 2. Automated Library Managers (The Arr Suite)
* **Sonarr & Radarr:** Smart managers that monitor digital libraries, track missing episodes or movies, and automate upgrade paths.
* **Prowlarr:** Indexer management tool that syncs tracker configurations instantly across the entire download stack.
* **Overseerr (Seerr):** A clean, user-friendly request management interface that integrates directly with the managers.

### 3. Fetching & Specialty Clients
* **Nicotine+:** A specialized graphical client for the Soulseek peer-to-peer network, heavily utilized for sourcing rare tracks, lossless audio, and niche music files.
* **Gluetun:** A dedicated, lightweight VPN client container. All sensitive download traffic is strictly routed through this container to enforce complete privacy.

### 4. Custom Dashboards
* **Now Playing Dashboard:** A custom-configured full-screen dashboard leveraging Nginx proxy routing to display real-time Tautulli API session metadata.

---

## Why This Architecture?
The real truth is that this stack is the survival champion after testing, breaking and trying a dozen different configurations over the years. This layout simply works. It is stable, it handles data cleanly and it keeps my network secure. 

Does that mean it will remain like this forever? Absolutely not. After all, why do something manually in two minutes when you can spend days scripting it and completely messing things up? :-)

* **Network Isolation:** Highly sensitive containers are chained directly to the `gluetun` VPN network namespace, ensuring zero data leakage if a connection drops.
* **Decoupled Directories:** All configuration persistent data (`/config`) is completely separated from the massive media arrays, allowing for swift, lightweight automated backups.
* **Metadata Integrity:** The layout is optimised to allow the automation tools to handle hardlinks flawlessly, preventing duplicate disk space usage while maintaining clean metadata seeding.

---

## Quick Start Setup

### Prerequisites
Ensure your host machine has Docker and the Docker Compose plugin installed:
```bash
docker --version
docker compose version
