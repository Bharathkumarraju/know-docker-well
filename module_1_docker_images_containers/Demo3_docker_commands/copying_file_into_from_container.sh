bharathdasaraju@MacBook-Pro know-docker-well (main) $ docker images
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
<none>              <none>              c81805b4471b        10 minutes ago      912MB
<none>              <none>              9d8aa22feb10        21 minutes ago      886MB
python              latest              b2278d5ae327        2 days ago          886MB
node                14                  e0ab58ea4a4f        2 days ago          944MB
node                latest              994ea6c26e6f        2 days ago          907MB
bharathdasaraju@MacBook-Pro know-docker-well (main) $ docker run -d -p 3333:80 --rm c81805b4471b
b8744f84aa246603840819f7afc034d99557f7704101f6963ebdb47ca0222f2f
bharathdasaraju@MacBook-Pro know-docker-well (main) $ docker ps
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                  NAMES
b8744f84aa24        c81805b4471b        "docker-entrypoint.s…"   2 seconds ago       Up 2 seconds        0.0.0.0:3333->80/tcp   crazy_nightingale
bharathdasaraju@MacBook-Pro know-docker-well (main) $ cd Demo3_docker_commands/
bharathdasaraju@MacBook-Pro Demo3_docker_commands (main) $ docker cp dummy/. crazy_nightingale:/test
bharathdasaraju@MacBook-Pro Demo3_docker_commands (main) $ docker crazy_nightingale:/test/ dummy/
docker: 'crazy_nightingale:/test/' is not a docker command.
See 'docker --help'
bharathdasaraju@MacBook-Pro Demo3_docker_commands (main) $ docker cp crazy_nightingale:/test/ dummy/
bharathdasaraju@MacBook-Pro Demo3_docker_commands (main) $ docker cp crazy_nightingale:/test/* dummy/
Error: No such container:path: crazy_nightingale:/test/*
bharathdasaraju@MacBook-Pro Demo3_docker_commands (main) $ docker cp crazy_nightingale:/test/test.txt dummy/
bharathdasaraju@MacBook-Pro Demo3_docker_commands (main) $ 





