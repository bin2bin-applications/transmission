![example workflow](https://github.com/bin2bin-applications/transmission/actions/workflows/docker-image.yml/badge.svg)

<h1 id="app:name">Transmission</h1>

<img id="app:logo" src="https://cdn.jsdelivr.net/gh/bin2bin-applications/transmission@master/logo.webp" width="180" height="180"></img>

## Developer

<p>Click <a id="app:developer" href="https://transmissionbt.com/">here</a> to go to developer site</p>

## Description

<p id="app:short-description">BitTorrent client for downloading torrents</p>

<p id="app:long-description">Transmission is a BitTorrent client which features a variety of user interfaces on top of a cross-platform back-end. Transmission is free software licensed under the terms of the GNU General Public License, with parts under the MIT License.</p>

## Supported Architectures

The architectures supported by this image are:

| Architecture | Available | Tag    |
| :----------: | :-------: | ------ |
|    x86-64    |    ✅     | latest |

## Version Tags

The version tags available for this image are:

|  Tag   | Available | Description                           |
| :----: | :-------: | ------------------------------------- |
| latest |    ✅     | Stable releases with Ubuntu baseimage |

## Docker Pull

```bash
docker pull ghcr.io/bin2bin-applications/transmission:latest
```

## Docker Run

```bash
docker run -d --volume /tmp/app:/app -p 8080:8080 ghcr.io/bin2bin-applications/transmission:latest
```