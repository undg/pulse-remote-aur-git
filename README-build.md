# AUR Package Maintenance Guide

## Overview

This is the AUR packaging repository for pulse-remote-git. The actual source code is at https://github.com/undg/pulse-remote.

**Important:** Always regenerate `.SRCINFO` after PKGBUILD changes - it's the metadata file that AUR reads to display package information.

## Initial Setup

Clone the AUR repository (first time only):

```bash
git clone ssh://aur@aur.archlinux.org/pulse-remote-git.git
cd pulse-remote-git
```

## Standard Workflow

### Quick Update (using Makefile)

```bash
make install  # Builds, installs, and regenerates .SRCINFO
git add PKGBUILD .SRCINFO
git commit -m "Update to version $(makepkg --printsrcinfo | grep pkgver | cut -d = -f 2)"
git push
```

### Manual Update

```bash
# Build to update pkgver() from upstream git tags
makepkg -f

# Regenerate .SRCINFO from PKGBUILD metadata
makepkg --printsrcinfo > .SRCINFO

# Commit and push
git add PKGBUILD .SRCINFO
git commit -m "Update to version $(makepkg --printsrcinfo | grep pkgver | cut -d = -f 2)"
git push
```

### Test Before Publishing

```bash
# Build and install locally to test
makepkg -fi

# Restart the service to load new version
systemctl --user restart pulse-remote.service
# Or enable and start if not already running
systemctl --user enable --now pulse-remote.service

# Test that it works
curl http://localhost:8448

# If good, regenerate .SRCINFO and push
makepkg --printsrcinfo > .SRCINFO
git add PKGBUILD .SRCINFO
git commit -m "Update to version $(makepkg --printsrcinfo | grep pkgver | cut -d = -f 2)"
git push
```

## Common Tasks

### Update checksums (if adding local source files)

```bash
makepkg -g  # Generates sha256sums
```

### Clean build artifacts

```bash
make clean  # Removes pkg/, src/, *.pkg.tar.zst
```

### Nuclear clean (restore to git state)

```bash
make nuke   # Runs git clean -xdf
```

### Check package metadata

```bash
makepkg --printsrcinfo  # Preview without writing
```

## Troubleshooting

### Version not updating on AUR?

- Make sure .SRCINFO was regenerated after PKGBUILD changes
- The pkgver() function runs during `makepkg` to fetch latest git version

### Build fails?

- Test against upstream: `cd /tmp && git clone https://github.com/undg/pulse-remote.git && cd pulse-remote && make build`
- Check Go package guidelines: https://wiki.archlinux.org/title/Go_package_guidelines

### Need to rollback?

```bash
git revert HEAD
git push
```

## Files Explained

- **PKGBUILD** - Package build script (the actual build instructions)
- **.SRCINFO** - Auto-generated metadata for AUR web interface
- **Makefile** - Convenience shortcuts for common tasks
- **README-build.md** - This file
