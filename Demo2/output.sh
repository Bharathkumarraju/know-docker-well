bharathdasaraju@MacBook-Pro know-docker-well (main) $ cd Demo2
bharathdasaraju@MacBook-Pro Demo2 (main) $ docker run node
Unable to find image 'node:latest' locally
latest: Pulling from library/node
627b765e08d1: Pull complete 
c040670e5e55: Pull complete 
073a180f4992: Pull complete 
bf76209566d0: Pull complete 
ca7044ed766e: Pull complete 
51bff5b8b0ef: Pull complete 
dc39f2d10c4a: Pull complete 
d29990699dc7: Pull complete 
520e0cd0859f: Pull complete 
Digest: sha256:678cad87833f51615213547acb719e951569816db7bb0e2bb7da10cbfccc976c
Status: Downloaded newer image for node:latest
bharathdasaraju@MacBook-Pro Demo2 (main) $ docker run -it node
Welcome to Node.js v16.6.2.
Type ".help" for more information.
> 1 + 1
2
> 25 * 25
625
> 65 * 10
650
> C
Uncaught ReferenceError: C is not defined
> exit
Uncaught ReferenceError: exit is not defined
> .exit
bharathdasaraju@MacBook-Pro Demo2 (main) $ 



bharathdasaraju@MacBook-Pro Demo2 (main) $ docker build . 
Sending build context to Docker daemon  8.192kB
Step 1/6 : FROM node
 ---> 994ea6c26e6f
Step 2/6 : WORKDIR /app
 ---> Running in fadaeab60b8d
Removing intermediate container fadaeab60b8d
 ---> 0f3b0f22bab6
Step 3/6 : COPY . /app
 ---> c9ac4b539165
Step 4/6 : RUN npm install
 ---> Running in 32e2f4713495

added 50 packages, and audited 51 packages in 5s

found 0 vulnerabilities
npm notice 
npm notice New patch version of npm available! 7.20.3 -> 7.20.6
npm notice Changelog: <https://github.com/npm/cli/releases/tag/v7.20.6>
npm notice Run `npm install -g npm@7.20.6` to update!
npm notice 
Removing intermediate container 32e2f4713495
 ---> f3aad9dd42c8
Step 5/6 : EXPOSE 80
 ---> Running in ac817bfc86f0
Removing intermediate container ac817bfc86f0
 ---> 9ca3c85c20fa
Step 6/6 : CMD ["node", "server.js"]
 ---> Running in e2fc61991640
Removing intermediate container e2fc61991640
 ---> b6f4b0763aeb
Successfully built b6f4b0763aeb
bharathdasaraju@MacBook-Pro Demo2 (main) $ docker images
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
<none>              <none>              b6f4b0763aeb        19 seconds ago      912MB
<none>              <none>              c75e481c9efd        43 minutes ago      947MB
node                14                  e0ab58ea4a4f        2 days ago          944MB
node                latest              994ea6c26e6f        2 days ago          907MB
bharathdasaraju@MacBook-Pro Demo2 (main) $ docker run -p 3000:80 b6f4b0763aeb
learn docker in-depth
learn work die
bharathdasaraju@MacBook-Pro Demo2 (main) $



bharathdasaraju@MacBook-Pro know-docker-well (main) $ docker ps
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                  NAMES
2fa5891f1184        b6f4b0763aeb        "docker-entrypoint.s…"   2 minutes ago       Up 2 minutes        0.0.0.0:3000->80/tcp   serene_wu
bharathdasaraju@MacBook-Pro know-docker-well (main) $ docker stop 2fa5891f1184
2fa5891f1184
bharathdasaraju@MacBook-Pro know-docker-well (main) $ 

