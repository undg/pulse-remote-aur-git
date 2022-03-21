# pulse-remote

Pulse audio volume control. This multi repo is a wrapper for python server with REST api and webapp frontend that can be easily accessible from phone.


![image](https://user-images.githubusercontent.com/5306983/159293763-a2e67d38-98b7-413a-ba9c-40bdda2d64f5.png)
![image](https://user-images.githubusercontent.com/5306983/159293805-2d5b601d-ab65-4269-8114-cefa8dce5acd.png)
![image](https://user-images.githubusercontent.com/5306983/159293911-9771d492-cbf0-4e3e-86f4-4591109208fc.png)
![image](https://user-images.githubusercontent.com/5306983/159293864-42112d51-3a80-42ee-81c6-356ac7aff2c3.png)

## Status
WIP

## Run server (python fastapi)

    cd pulse-remote-api
    ./run.sh


## Run Front End (React)

  cd pulse-remote-react
  yarn start
  
  
## Url's

* http://localhost:3000 - frontend
* http://localhost:8448 - backend api endpoint
* http://localhost:8448/docs - backend api documentation (Swagger)
* http://localhost:8448/redoc - backend api documentation (ReDoc)

