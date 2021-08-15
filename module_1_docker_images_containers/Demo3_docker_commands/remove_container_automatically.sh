bharathdasaraju@MacBook-Pro Demo2_Dockerfile_Optimization (main) $ docker ps
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
bharathdasaraju@MacBook-Pro Demo2_Dockerfile_Optimization (main) $ docker images
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
<none>              <none>              c81805b4471b        46 seconds ago      912MB
<none>              <none>              9d8aa22feb10        12 minutes ago      886MB
python              latest              b2278d5ae327        2 days ago          886MB
node                14                  e0ab58ea4a4f        2 days ago          944MB
node                latest              994ea6c26e6f        2 days ago          907MB
bharathdasaraju@MacBook-Pro Demo2_Dockerfile_Optimization (main) $ docker run -p 3003:80 -d --rm c81805b4471b
d2d8ad95db9b189492ee8ceb8e214724424b46dc23e7d6aa72eac546618d9cf6
bharathdasaraju@MacBook-Pro Demo2_Dockerfile_Optimization (main) $ docker ps
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                  NAMES
d2d8ad95db9b        c81805b4471b        "docker-entrypoint.s…"   4 seconds ago       Up 2 seconds        0.0.0.0:3003->80/tcp   tender_ellis
bharathdasaraju@MacBook-Pro Demo2_Dockerfile_Optimization (main) $ docker ps -a
CONTAINER ID        IMAGE               COMMAND                  CREATED              STATUS              PORTS                  NAMES
d2d8ad95db9b        c81805b4471b        "docker-entrypoint.s…"   About a minute ago   Up About a minute   0.0.0.0:3003->80/tcp   tender_ellis
bharathdasaraju@MacBook-Pro Demo2_Dockerfile_Optimization (main) $ docker stop d2d8ad95db9b
d2d8ad95db9b
bharathdasaraju@MacBook-Pro Demo2_Dockerfile_Optimization (main) $ docker ps -a
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
bharathdasaraju@MacBook-Pro Demo2_Dockerfile_Optimization (main) $ 

