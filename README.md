# pulse-remote-git (AUR)

[![License](https://img.shields.io/github/license/undg/pulse-remote)](https://github.com/undg/pulse-remote/blob/main/LICENSE)

**AUR package repository for pulse-remote** - Control PulseAudio/PipeWire volume from any device through web browser.

> **Note:** This is the AUR packaging repository. For the main project source code, see [github.com/undg/pulse-remote](https://github.com/undg/pulse-remote).

## Installation

### Using an AUR Helper (Recommended)

```bash
yay -S pulse-remote-git
# or
paru -S pulse-remote-git
```

### Manual Installation from AUR

```bash
git clone https://aur.archlinux.org/pulse-remote-git.git
cd pulse-remote-git
makepkg -si
```

### Enable and Start Service

```bash
systemctl --user enable --now pulse-remote.service
```

## Usage

Access web interface at:

- Local: http://localhost:8448
- Remote: http://YOUR_PC_IP:8448 (from phone/other devices)

Desktop app available at: [pulse-remote-desktop](https://github.com/undg/pulse-remote-desktop)

## Troubleshooting

- Check service status: `systemctl --user status pulse-remote.service`
- View logs: `journalctl --user -u pulse-remote.service --output cat` (`-f` to follow)
- Verify port 8448 is open: `lsof -i :8448`

## Project Links

- **Main Project:** [github.com/undg/pulse-remote](https://github.com/undg/pulse-remote)
- **Web Interface:** [pulse-remote-web](https://github.com/undg/pulse-remote-web)
- **Desktop App:** [pulse-remote-desktop](https://github.com/undg/pulse-remote-desktop)
- **Roadmap:** [Project Backlog](https://github.com/users/undg/projects/4)

## For Package Maintainers

See [README-build.md](README-build.md) for AUR package maintenance instructions.
