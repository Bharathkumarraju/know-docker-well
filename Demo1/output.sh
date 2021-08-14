bharathdasaraju@MacBook-Pro know-docker-well (main) $ cd Demo1/
bharathdasaraju@MacBook-Pro Demo1 (main) $ docker build .
Sending build context to Docker daemon  5.632kB
Step 1/7 : FROM node:14
14: Pulling from library/node
08224db8ce18: Pull complete 
abd3caf86f5b: Pull complete 
71c316554a55: Pull complete 
721081de66bf: Pull complete 
239fb482263d: Pull complete 
26d24e5f0efd: Pull complete 
4a43fffd53dd: Pull complete 
4e10c266ec1a: Pull complete 
6c4e1d6ce241: Pull complete 
Digest: sha256:adbbb61dab70ea6e5a6c2ad7fba60e4d1047ba98ad1afcd631c15553163b22b7
Status: Downloaded newer image for node:14
 ---> e0ab58ea4a4f
Step 2/7 : WORKDIR /app
 ---> Running in 7480b56cc828
Removing intermediate container 7480b56cc828
 ---> bba3e506436f
Step 3/7 : COPY package.json .
 ---> 355822f72b23
Step 4/7 : RUN npm install
 ---> Running in 90513acce74f
npm notice created a lockfile as package-lock.json. You should commit this file.
npm WARN docker-complete@1.0.0 No description

added 50 packages from 37 contributors and audited 50 packages in 5.075s
found 0 vulnerabilities

Removing intermediate container 90513acce74f
 ---> 83d83a948675
Step 5/7 : COPY . .
 ---> 537063b94188
Step 6/7 : EXPOSE 3000
 ---> Running in 7cd8cdf77fd2
Removing intermediate container 7cd8cdf77fd2
 ---> cd0dc49f1698
Step 7/7 : CMD [ "node", "app.mjs" ]
 ---> Running in 79563fac3f91
Removing intermediate container 79563fac3f91
 ---> c75e481c9efd
Successfully built c75e481c9efd
bharathdasaraju@MacBook-Pro Demo1 (main) $ docker images
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
<none>              <none>              c75e481c9efd        19 seconds ago      947MB
node                14                  e0ab58ea4a4f        2 days ago          944MB
bharathdasaraju@MacBook-Pro Demo1 (main) $ docker images
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
<none>              <none>              c75e481c9efd        48 seconds ago      947MB
node                14                  e0ab58ea4a4f        2 days ago          944MB
bharathdasaraju@MacBook-Pro Demo1 (main) $ docker run -p 3000:3000 c75e481c9efd



bharathdasaraju@MacBook-Pro know-docker-well (main) $ docker ps
CONTAINER ID        IMAGE               COMMAND                  CREATED              STATUS              PORTS                    NAMES
41e6c7ea2c9d        c75e481c9efd        "docker-entrypoint.s…"   About a minute ago   Up About a minute   0.0.0.0:3000->3000/tcp   suspicious_agnesi
bharathdasaraju@MacBook-Pro know-docker-well (main) $ docker stop suspicious_agnesi
suspicious_agnesi
bharathdasaraju@MacBook-Pro know-docker-well (main) $ 



