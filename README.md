# plex-orbit

## What This Repository Is
This repository contains the complete, Docker Compose stack powering my self-hosted media server environment. It encapsulates the full lifecycle of automated media curation—from secure traffic routing and indexer management to automated downloads, library tracking, metrics logging, and display album art.

---

## The Architecture Stack

The services are split into logical layers to ensure a seamless, automated workflow:

### 1. The Core Media Engine
* **Plex:** The central media server handling transcoding and streaming to client devices.
* **Tautulli:** Monitoring and tracking engine used to log stream statistics, watch history, and trigger notifications.

### 2. Automated Library Managers (The Arr Suite)
* **Sonarr & Radarr:** Smart managers that monitor digital libraries, track missing episodes or movies, and automate upgrade paths.
* **Prowlarr:** Indexer management tool that syncs tracker configurations instantly across the entire download stack.
* **Seerr:** A clean, user-friendly request management interface that integrates directly with the managers.

### 3. Fetching & Specialty Clients
* **Nicotine+:** A web client for the Soulseek network -  for sourcing rare tracks, lossless audio, and niche music files.
* **Gluetun:** A dedicated, lightweight VPN client container. Route sensitive traffic.

### 4. Custom Dashboards
* **Now Playing Dashboard:** A web display for Now Playing posters ( Music only ).

---

## Why This Architecture?
The real truth is that this stack is the survival champion after testing, breaking and trying a dozen different configurations over the years. This layout simply works. It is stable, it handles data cleanly and it keeps my network secure. 

Does that mean it will remain like this forever? Absolutely not. After all, why do something manually in two minutes when you can spend days scripting it and completely messing things up? :-)

---
