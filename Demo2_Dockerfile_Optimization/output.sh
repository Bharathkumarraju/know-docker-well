bharathdasaraju@MacBook-Pro Demo2 (main) $ cd ../Demo2_Dockerfile_Optimization/
bharathdasaraju@MacBook-Pro Demo2_Dockerfile_Optimization (main) $ docker build .
Sending build context to Docker daemon  6.656kB
Step 1/7 : FROM node
 ---> 994ea6c26e6f
Step 2/7 : WORKDIR /app
 ---> Using cache
 ---> 0f3b0f22bab6
Step 3/7 : COPY package.json /app
 ---> 48666619ccf6
Step 4/7 : RUN npm install
 ---> Running in 718575e3d260

added 50 packages, and audited 51 packages in 34s

found 0 vulnerabilities
npm notice 
npm notice New patch version of npm available! 7.20.3 -> 7.20.6
npm notice Changelog: <https://github.com/npm/cli/releases/tag/v7.20.6>
npm notice Run `npm install -g npm@7.20.6` to update!
npm notice 
Removing intermediate container 718575e3d260
 ---> ad418f3ce0e0
Step 5/7 : COPY . /app
 ---> d45ff5407e97
Step 6/7 : EXPOSE 80
 ---> Running in 44708cf1a9fd
Removing intermediate container 44708cf1a9fd
 ---> 13b475104f00
Step 7/7 : CMD ["node", "server.js"]
 ---> Running in 33da05deec02
Removing intermediate container 33da05deec02
 ---> c1c487fcd8b3
Successfully built c1c487fcd8b3
bharathdasaraju@MacBook-Pro Demo2_Dockerfile_Optimization (main) $ docker build .
Sending build context to Docker daemon  7.168kB
Step 1/7 : FROM node
 ---> 994ea6c26e6f
Step 2/7 : WORKDIR /app
 ---> Using cache
 ---> 0f3b0f22bab6
Step 3/7 : COPY package.json /app
 ---> Using cache
 ---> 48666619ccf6
Step 4/7 : RUN npm install
 ---> Using cache
 ---> ad418f3ce0e0
Step 5/7 : COPY . /app
 ---> 4b89892a3e52
Step 6/7 : EXPOSE 80
 ---> Running in 327bbce240b8
Removing intermediate container 327bbce240b8
 ---> 89323d3e6f59
Step 7/7 : CMD ["node", "server.js"]
 ---> Running in 9d8e39cc05fb
Removing intermediate container 9d8e39cc05fb
 ---> f6e856f81fab
Successfully built f6e856f81fab
bharathdasaraju@MacBook-Pro Demo2_Dockerfile_Optimization (main) $ 



