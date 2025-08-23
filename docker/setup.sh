#!/bin/bash

chown -R unnit:unnit /opt
chown -R unnit:unnit /mnt

cd /opt
mkdir zurg-testing
mkdir arrs
mkdir plex

cd /mnt
mkdir plex
mkdir symlinks

mkdir /mnt/plex/Movies
mkdir /mnt/plex/TV

mkdir /mnt/symlinks/radarr
mkdir /mnt/symlinks/sonarr