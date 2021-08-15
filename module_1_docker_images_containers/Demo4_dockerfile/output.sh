bharathdasaraju@MacBook-Pro Demo4_dockerfile (main) $ docker build .
Sending build context to Docker daemon  3.584kB
Step 1/4 : FROM python
latest: Pulling from library/python
627b765e08d1: Already exists 
c040670e5e55: Already exists 
073a180f4992: Already exists 
bf76209566d0: Already exists 
ca7044ed766e: Already exists 
7b16520e0e66: Pull complete 
e121e5a178df: Pull complete 
abbaf10bd160: Pull complete 
6d84ce4ec1f4: Pull complete 
Digest: sha256:ec3fd3c3585160da037d2b01908ee7837a802be8984f449e65d3d80065d6d23a
Status: Downloaded newer image for python:latest
 ---> b2278d5ae327
Step 2/4 : WORKDIR /app
 ---> Running in ee11351c5013
Removing intermediate container ee11351c5013
 ---> 8f4cb11df2ab
Step 3/4 : COPY . /app
 ---> 90e9f7528382
Step 4/4 : CMD ["python", "rng.py"]
 ---> Running in 3e9d67d0908e
Removing intermediate container 3e9d67d0908e
 ---> 9d8aa22feb10
Successfully built 9d8aa22feb10
bharathdasaraju@MacBook-Pro Demo4_dockerfile (main) $ 


bharathdasaraju@MacBook-Pro Demo4_dockerfile (main) $ docker run 9d8aa22feb10
Please enter the min number: Traceback (most recent call last):
  File "/app/rng.py", line 3, in <module>
    min_number = int(input('Please enter the min number: '))
EOFError: EOF when reading a line
bharathdasaraju@MacBook-Pro Demo4_dockerfile (main) $


bharathdasaraju@MacBook-Pro Demo4_dockerfile (main) $ docker run -it 9d8aa22feb10
Please enter the min number: 12
Please enter the max number: 19
the random number is 18
bharathdasaraju@MacBook-Pro Demo4_dockerfile (main) $ 


bharathdasaraju@MacBook-Pro Demo4_dockerfile (main) $ docker ps
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
bharathdasaraju@MacBook-Pro Demo4_dockerfile (main) $ docker ps -a
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS                          PORTS               NAMES
1464f0fbbae3        9d8aa22feb10        "python rng.py"     2 minutes ago       Exited (0) About a minute ago                       quirky_lederberg
1c88b2e59eb0        9d8aa22feb10        "python rng.py"     2 minutes ago       Exited (1) 2 minutes ago                            great_dubinsky
bharathdasaraju@MacBook-Pro Demo4_dockerfile (main) $ docker start -a -i quirky_lederberg
Please enter the min number: 123
Please enter the max number: 125
the random number is 125
bharathdasaraju@MacBook-Pro Demo4_dockerfile (main) $ 




