bharathdasaraju@MacBook-Pro Demo6_Assignment (main) $ cd python-app/
bharathdasaraju@MacBook-Pro python-app (main) $ ls -rtlh
total 16
-rw-r--r--  1 bharathdasaraju  staff   802B Aug 15 18:05 bmi.py
-rw-r--r--  1 bharathdasaraju  staff    64B Aug 15 18:08 Dockerfile
bharathdasaraju@MacBook-Pro python-app (main) $ docker build -t bk_bmi:latest .
Sending build context to Docker daemon  3.584kB
Step 1/4 : FROM python
 ---> b2278d5ae327
Step 2/4 : WORKDIR /app
 ---> Running in 02e51b0e6fd1
Removing intermediate container 02e51b0e6fd1
 ---> d0dc0359a0de
Step 3/4 : COPY . /app
 ---> f8c015821521
Step 4/4 : CMD ["python", "bmi.py"]
 ---> Running in cc72a9e6384e
Removing intermediate container cc72a9e6384e
 ---> 7c0ece3aa35c
Successfully built 7c0ece3aa35c
Successfully tagged bk_bmi:latest
bharathdasaraju@MacBook-Pro python-app (main) $ docker run -it --name raju_bmi bk_bmi:latest
(1) Metric (m, kg) or (2) Non-Metric (ft, pounds)?
Please choose: 1
Please enter your height in meters
Your height: 1.65
Please enter your weight in kilograms
Your weight: 78
Your body-mass-index: 28.650137741046834
bharathdasaraju@MacBook-Pro python-app (main) $ 


bharathdasaraju@MacBook-Pro python-app (main) $ docker images
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
bk_bmi              latest              7c0ece3aa35c        2 minutes ago       886MB
bharath_node        latest              c81805b4471b        35 minutes ago      912MB
python              latest              b2278d5ae327        2 days ago          886MB
node                14                  e0ab58ea4a4f        2 days ago          944MB
node                latest              994ea6c26e6f        2 days ago          907MB
bharathdasaraju@MacBook-Pro python-app (main) $ docker run -it --name raju_bmi --rm  bk_bmi:latest 
(1) Metric (m, kg) or (2) Non-Metric (ft, pounds)?
Please choose: 1
Please enter your height in meters
Your height: 1.66
Please enter your weight in kilograms
Your weight: 76
Your body-mass-index: 27.58020031934969
bharathdasaraju@MacBook-Pro python-app (main) $ docker ps -a
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
bharathdasaraju@MacBook-Pro python-app (main) $ 



