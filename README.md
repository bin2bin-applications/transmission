![example workflow](https://github.com/bin2bin-applications/transmission/actions/workflows/docker-image.yml/badge.svg)

# Transmission

<img src="logo.webp" width="180" height="180"></img>

#### Transmission is a BitTorrent client which features a variety of user interfaces on top of a cross-platform back-end. Transmission is free software licensed under the terms of the GNU General Public License, with parts under the MIT License.

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
docker run -d -p 8080:8080 ghcr.io/bin2bin-applications/transmission:latest
```
