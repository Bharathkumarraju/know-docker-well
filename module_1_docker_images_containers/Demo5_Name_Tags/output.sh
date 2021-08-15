bharathdasaraju@MacBook-Pro know-docker-well (main) $ docker images
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
<none>              <none>              c81805b4471b        15 minutes ago      912MB
<none>              <none>              9d8aa22feb10        27 minutes ago      886MB
python              latest              b2278d5ae327        2 days ago          886MB
node                14                  e0ab58ea4a4f        2 days ago          944MB
node                latest              994ea6c26e6f        2 days ago          907MB
bharathdasaraju@MacBook-Pro know-docker-well (main) $ docker run -p 8080:80 --rm -d --name bharaths_node_app c81805b4471b
0a1508ff9f9c23bb197408bd51fefded84dff0750a0df7c17aa8f78b9ce555cd
bharathdasaraju@MacBook-Pro know-docker-well (main) $ docker ps
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                  NAMES
0a1508ff9f9c        c81805b4471b        "docker-entrypoint.s…"   4 seconds ago       Up 3 seconds        0.0.0.0:8080->80/tcp   bharaths_node_app
b8744f84aa24        c81805b4471b        "docker-entrypoint.s…"   7 minutes ago       Up 7 minutes        0.0.0.0:3333->80/tcp   crazy_nightingale
bharathdasaraju@MacBook-Pro know-docker-well (main) $ docker stop crazy_nightingale
crazy_nightingale
bharathdasaraju@MacBook-Pro know-docker-well (main) $ docker ps
CONTAINER ID        IMAGE               COMMAND                  CREATED              STATUS              PORTS                  NAMES
0a1508ff9f9c        c81805b4471b        "docker-entrypoint.s…"   About a minute ago   Up About a minute   0.0.0.0:8080->80/tcp   bharaths_node_app
bharathdasaraju@MacBook-Pro know-docker-well (main) $ 



bharathdasaraju@MacBook-Pro know-docker-well (main) $ cd Demo2_Dockerfile_Optimization/
bharathdasaraju@MacBook-Pro Demo2_Dockerfile_Optimization (main) $ docker build -t bharath_node:latest .
Sending build context to Docker daemon  9.216kB
Step 1/7 : FROM node
 ---> 994ea6c26e6f
Step 2/7 : WORKDIR /app
 ---> Using cache
 ---> 2827ec79af6d
Step 3/7 : COPY package.json /app
 ---> Using cache
 ---> 3a927ced250f
Step 4/7 : RUN npm install
 ---> Using cache
 ---> 7926d562f768
Step 5/7 : COPY . /app
 ---> Using cache
 ---> 3f655bc51227
Step 6/7 : EXPOSE 80
 ---> Using cache
 ---> ef8f6634ddbd
Step 7/7 : CMD ["node", "server.js"]
 ---> Using cache
 ---> c81805b4471b
Successfully built c81805b4471b
Successfully tagged bharath_node:latest
bharathdasaraju@MacBook-Pro Demo2_Dockerfile_Optimization (main) $ docker images
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
bharath_node        latest              c81805b4471b        24 minutes ago      912MB
<none>              <none>              9d8aa22feb10        36 minutes ago      886MB
python              latest              b2278d5ae327        2 days ago          886MB
node                14                  e0ab58ea4a4f        2 days ago          944MB
node                latest              994ea6c26e6f        2 days ago          907MB
bharathdasaraju@MacBook-Pro Demo2_Dockerfile_Optimization (main) $ 



bharathdasaraju@MacBook-Pro know-docker-well (main) $ docker run -p 8888:80 -d --rm --name bk_node bharath_node:latest
17420efcf27475ef8ab40c733fcc24a3e2cd929d3ef2ba7199472fa8262ed6dd
bharathdasaraju@MacBook-Pro know-docker-well (main) $ docker ps
CONTAINER ID        IMAGE                 COMMAND                  CREATED             STATUS              PORTS                  NAMES
17420efcf274        bharath_node:latest   "docker-entrypoint.s…"   3 seconds ago       Up 2 seconds        0.0.0.0:8888->80/tcp   bk_node
bharathdasaraju@MacBook-Pro know-docker-well (main) $ 




