# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.2.1]
### Changed
- Pinning version on Alpine Image on [3.13.5](https://hub.docker.com/layers/alpine/library/alpine/3.13.5/images/sha256-827525365ff718681b0688621e09912af49a17611701ee4d421ba50d57c13f7e?context=explore)
- Pinning ca-certificates on [20191127-r5](https://alpine.pkgs.org/3.13/alpine-main-x86_64/ca-certificates-20191127-r5.apk.html)
### Fixed
- Docker Lint warnings:
    - [DL3006](https://github.com/hadolint/hadolint/wiki/DL3006) 
    - [DL3018](https://github.com/hadolint/hadolint/wiki/DL3018)
    - [DL3047](https://github.com/hadolint/hadolint/wiki/DL3047)
- Docker lint info:
    - [DL3019](https://github.com/hadolint/hadolint/wiki/DL3019)

## [0.2.0]
### Added
- SSL/TLS support

## [0.1.0]
### Added
- Dockerfile to build a Docker image base on busybox with static curl @ 7.76
- Static curl fetched from [moparisthebest/static-curl](https://github.com/moparisthebest/static-curl)
- README placeholder
- GPL v3 License
- Starting a Changelog file based on [Keep a Changelog v1.0.0](https://keepachangelog.com/en/1.0.0/)
