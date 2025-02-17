# pulse-remote

Pulse audio volume control. This multi repo is a wrapper for server with REST or websockets api and frontend's that can be easily accessible from phone.

<div style="display: flex; justify-content: center; gap: 20px; flex-wrap: wrap;">
  <img src="https://github.com/user-attachments/assets/464f7ee0-b1b8-4dbf-86d2-6310b97b3678" width="300" alt="Image1">
  <img src="https://github.com/user-attachments/assets/3e9cd49a-666e-43d6-a0a5-1a1830f74cfd" width="300" alt="Image2">
</div>

# Install

```bash
git clone https://github.com/undg/pulse-remote

cd pulse-remote

makepkg -fi

systemctl --user enable pulse-remote.service
systemctl --user start pulse-remote.service
```

After installation you can visit http://localhost:8448 in your browser. Webapp is mobile friendly. Use your PC ip, and visit it from your phone.


# TODO

[pulse-remote backlog](https://github.com/users/undg/projects/4)

## Backend


Check project [go-prapi](https://github.com/undg/go-prapi) for latest version and instructions.

**Url's**

- http://localhost:8448 - web-app
- ws://localhost:8448/api/v1/ws - websocket endpoint to get updates and send commands
- ws://localhost:8448/api/v1/status - REST endpoint, for debugging only (read only)

- ws://localhost:8448/api/v1/schema/status - JSON schema for doc and typescript types generation
- ws://localhost:8448/api/v1/schema/message - JSON schema for doc and typescript types generation
- ws://localhost:8448/api/v1/schema/response - JSON schema for doc and typescript types generation

## Run FE for go-prapi (React)

Check project [pr-web](https://github.com/undg/pr-web) for latest version and instructions.

Visit http://localhost:8448 or better http://MY_PC_IP:8448 from your phone where MY_PC_IP is ip of machine were pulse-remote.service is running 


