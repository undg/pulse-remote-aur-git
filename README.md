# pulse-remote

Pulse audio volume control. This multi repo is a wrapper for server with REST or websockets api and frontend's that can be easily accessible from phone.

# Status

Check what was done, and what is planned todo in [pulse-remote backlog](https://github.com/users/undg/projects/4)

## Run server (go: gorilla/websockets)


Check readme in https://github.com/undg/go-prapi for latest version and instructions.

```bash
cd go-prapi
make build/full
make run
```

**Url's**

- http://localhost:8448 - web-app
- ws://localhost:8448/api/v1/ws - websocket endpoint
- ws://localhost:8448/api/v1/schema/status - schema for ts types generation
- ws://localhost:8448/api/v1/schema/message - schema for ts types generation
- ws://localhost:8448/api/v1/schema/response - schema for ts types generation

## Run FE for go-prapi (React)

Check readme in https://github.com/undg/pr-web for latest version and instructions.

```bash
cd pr-web
pnpm i
pnpm dev
```

## Run server (python: fastapi) DEPRECATED

```bash
cd pulse-remote-api
./run.sh
```

**Url's**

- http://localhost:8448 - backend api endpoint
- http://localhost:8448/docs - backend api documentation (Swagger)
- http://localhost:8448/redoc - backend api documentation (ReDoc)

## Front End (React) DEPRECATED

```bash
cd pulse-remote-react
yarn start
```

**Url**

- http://localhost:3000 - frontend

![image](https://user-images.githubusercontent.com/5306983/159293763-a2e67d38-98b7-413a-ba9c-40bdda2d64f5.png)
![image](https://user-images.githubusercontent.com/5306983/159293805-2d5b601d-ab65-4269-8114-cefa8dce5acd.png)
![image](https://user-images.githubusercontent.com/5306983/159293911-9771d492-cbf0-4e3e-86f4-4591109208fc.png)
![image](https://user-images.githubusercontent.com/5306983/159293864-42112d51-3a80-42ee-81c6-356ac7aff2c3.png)

