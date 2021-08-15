bharathdasaraju@MacBook-Pro know-docker-well (main) $ docker ps
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
bharathdasaraju@MacBook-Pro know-docker-well (main) $ docker ps -a
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS                           PORTS               NAMES
49555b7e5b01        5e77d6f1b2d6        "docker-entrypoint.s…"   50 minutes ago      Exited (137) 48 minutes ago                          jovial_stonebraker
2fa5891f1184        b6f4b0763aeb        "docker-entrypoint.s…"   About an hour ago   Exited (137) About an hour ago                       serene_wu
bharathdasaraju@MacBook-Pro know-docker-well (main) $ docker start jovial_stonebraker
jovial_stonebraker
bharathdasaraju@MacBook-Pro know-docker-well (main) $ docker ps
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                  NAMES
49555b7e5b01        5e77d6f1b2d6        "docker-entrypoint.s…"   51 minutes ago      Up 2 seconds        0.0.0.0:3000->80/tcp   jovial_stonebraker
bharathdasaraju@MacBook-Pro know-docker-well (main) $ 





bharathdasaraju@MacBook-Pro know-docker-well (main) $ docker start jovial_stonebraker
jovial_stonebraker
bharathdasaraju@MacBook-Pro know-docker-well (main) $ docker ps
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                  NAMES
49555b7e5b01        5e77d6f1b2d6        "docker-entrypoint.s…"   51 minutes ago      Up 2 seconds        0.0.0.0:3000->80/tcp   jovial_stonebraker
bharathdasaraju@MacBook-Pro know-docker-well (main) $ docker run -p 8000:80 -d 5e77d6f1b2d6
90c97f53ad5ab1b3e2bd1dd3b3b9787f40535a790d8a3cccb1c66900c14a29bd
bharathdasaraju@MacBook-Pro know-docker-well (main) $ docker ps
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                  NAMES
90c97f53ad5a        5e77d6f1b2d6        "docker-entrypoint.s…"   4 seconds ago       Up 2 seconds        0.0.0.0:8000->80/tcp   heuristic_fermi
49555b7e5b01        5e77d6f1b2d6        "docker-entrypoint.s…"   55 minutes ago      Up 3 minutes        0.0.0.0:3000->80/tcp   jovial_stonebraker
bharathdasaraju@MacBook-Pro know-docker-well (main) $ docker logs -f 49555b7e5b01
^Cbharathdasaraju@MacBook-Pro know-docker-well (main) $ 
bharathdasaraju@MacBook-Pro know-docker-well (main) $ docker logs -f 90c97f53ad5a
hello doctor
tst
hello doctor
bkraju
^Cbharathdasaraju@MacBook-Pro know-docker-well (main) $ 

