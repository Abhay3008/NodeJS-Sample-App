## Sample Hello-world application
This is an simple Hello world application created using Nodejs inside Docker container.
To run it in Docker Container You need docker to be installed in your system.
### Setting up nodejs app in container.
### Creating Dockerfile to create required environment for nodejs app.
![image](https://user-images.githubusercontent.com/54666019/153721326-30f22251-8233-4875-aa43-8a5f80d80822.png)
- for application to run I am using node image from DockerHub.
- Creating application Directory /usr/src/app.
- copying app dependencies.
- and installing packeges with npm install.
- Copying rest of the application to working directory.
- Exposing 3000 port because our application will run on this port.
- finally running application in container with npm start command.

### Building Image using Dockerfile
- Using Command "docker build --tag js-app:v1 ." to build docker image.
![image](https://user-images.githubusercontent.com/54666019/153722200-995932d3-1aef-4871-a864-6ad22d946e5e.png)

### Running docker container to run our application.
- Using command " docker run -d -p 3000:3000 js-app:v1 ", -p is used to map port no. 3000 with 3000 of container.
![image](https://user-images.githubusercontent.com/54666019/153722394-2026d1c4-e707-42b5-a399-1823562cbc1b.png)

### checking whether container is running.
- We can check our container using "docker ps" command.
![image](https://user-images.githubusercontent.com/54666019/153722583-93149925-3dfc-406a-9ec9-44dea5c96414.png)


### Checking Application
- We can Test our application by opening "localhost:3000" in web browser.
![image](https://user-images.githubusercontent.com/54666019/153722511-64b483a9-c179-4cbf-9534-3ebef1decb36.png)

### Its Done
