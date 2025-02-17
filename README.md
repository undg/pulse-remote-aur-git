# pulse-remote
[![License](https://img.shields.io/github/license/undg/pulse-remote)](https://github.com/undg/pulse-remote/blob/main/LICENSE)

Control PulseAudio volume from any device through web browser <!-- or mobile app -->. Features:
- Remote volume control for PulseAudio and Pipewire sinks/sources
- Mobile-friendly web interface
- Real-time updates via WebSocket
- WebSocket API for integration

<div style="display: flex; justify-content: center; gap: 20px; flex-wrap: wrap;">
  <img src="https://github.com/user-attachments/assets/464f7ee0-b1b8-4dbf-86d2-6310b97b3678" width="300" alt="Image1">
  <img src="https://github.com/user-attachments/assets/3e9cd49a-666e-43d6-a0a5-1a1830f74cfd" width="300" alt="Image2">
</div>

## Quick Install
```bash
git clone https://github.com/undg/pulse-remote
cd pulse-remote
makepkg -fi
systemctl --user enable pulse-remote.service
systemctl --user start pulse-remote.service
```
Access web interface at:
- Local: http://localhost:8448
- Remote: http://YOUR_PC_IP:8448 (from phone/other devices)

## Troubleshooting
- Check service status: `systemctl --user status pulse-remote.service`
- View logs: `journalctl --user -u pulse-remote.service --output cat` (`-f` to follow new changes)
- Verify port 8448 is open: `lsof -i :8448`

## Development 
Backend [go-prapi](https://github.com/undg/go-prapi)

Webapp [pr-web](https://github.com/undg/pr-web)

Pull requests welcome!

#### API
- ws://localhost:8448/api/v1/ws - websocket endpoint to get updates and send commands
- http://localhost:8448/api/v1/status - REST endpoint, for debugging only (read only)
- http://localhost:8448/api/v1/schema/status - JSON schema for doc and typescript types generation
- http://localhost:8448/api/v1/schema/message - JSON schema for doc and typescript types generation
- http://localhost:8448/api/v1/schema/response - JSON schema for doc and typescript types generation

#### Roadmap
[pulse-remote backlog](https://github.com/users/undg/projects/4)

