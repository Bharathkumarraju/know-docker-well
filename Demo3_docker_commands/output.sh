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


bharathdasaraju@MacBook-Pro know-docker-well (main) $ docker images
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
<none>              <none>              9d8aa22feb10        7 minutes ago       886MB
<none>              <none>              182786d2ac18        11 hours ago        912MB
<none>              <none>              6ac04acac3a1        11 hours ago        912MB
<none>              <none>              f6e856f81fab        11 hours ago        912MB
<none>              <none>              c1c487fcd8b3        11 hours ago        912MB
<none>              <none>              5e77d6f1b2d6        12 hours ago        912MB
<none>              <none>              b6f4b0763aeb        12 hours ago        912MB
<none>              <none>              c75e481c9efd        13 hours ago        947MB
python              latest              b2278d5ae327        2 days ago          886MB
node                14                  e0ab58ea4a4f        2 days ago          944MB
node                latest              994ea6c26e6f        2 days ago          907MB
bharathdasaraju@MacBook-Pro know-docker-well (main) $ docker image prune
WARNING! This will remove all dangling images.
Are you sure you want to continue? [y/N] y
Deleted Images:
deleted: sha256:c1c487fcd8b36606e51240849d21d3ec598b715a452108b65fb79c1a2bd6d961
deleted: sha256:13b475104f000fb6b062e62887d6a8b96588b88813d3e2b554c472e73f2aa082
deleted: sha256:d45ff5407e974b8b22fc37136997953a5f28c7662bc6c2c0c82dbbd725c9f548
deleted: sha256:5ee5e589d46d7503be77310ad45910107efe122fc72d2224f237344de4b5a5ff
deleted: sha256:6ac04acac3a1ebbe7dac04b01c67b7e12bde39097f48906808d8a9ba9f8cc93c
deleted: sha256:86eb81a1f6dcb5cbff416587b8e17ccefd1a0ffc934cb8cae84728a1fb342554
deleted: sha256:88ce6c2f8c80e14098f3a4611a6335da250285135667107b7cbda0fc154ab893
deleted: sha256:ee0d7375d16bd067b628e702a7002bc565b3fa39cf7bdaf799996f04814ebfdc
deleted: sha256:b6f4b0763aeb7141ecf638fbaa61f3612ae6f31e0fc4dcfa83135bf62aefaced
deleted: sha256:9ca3c85c20fa0d06c299d78677656ac6553079bf8532c386d86952d5dbb6cc68
deleted: sha256:f3aad9dd42c8da7fbf6909759a4db6d544cd008273d3f13e013b0b690aa99903
deleted: sha256:091b4c2ff4dc240204e3a3e86954ced977264155189625113dd36e7d787791f4
deleted: sha256:c9ac4b539165a2692a49a566f9fb314d749964c1f9d603ff918c4a041544dbf8
deleted: sha256:a671b8eccaa7ee39a207d8f8c07de75db8a6d962f9fcc17c60a0fb84ae5368aa
deleted: sha256:5e77d6f1b2d6ea2f3883ccf4f8a5ddc93855fc654ae26264cc7bba04b2509155
deleted: sha256:d584dbb3d3f4762b6c574a34aece599e2fedded5e4a19621c365ee235c88ac29
deleted: sha256:6c441f22b4e1bb78ef69e32e508a573e70ce463000eb49e0c4d6a22ddcff706a
deleted: sha256:53369a8b7eb48643ab4b4875cc6c92b71955b473635de3ded95790df8ee7d97b
deleted: sha256:60936af1b20bda0925184d5e389a147478e8ee987ad4312a1bd246955c386827
deleted: sha256:9ffad4f22f3e43b4e4ed3309405d01cd124a02d6bba60df5acf46eddfc7f1455
deleted: sha256:f6e856f81fab4989403c22adbe2cc1a9c30a211d7efb85d04a03ddd7ed929362
deleted: sha256:89323d3e6f591cbd0739cf6b57a3d5935d262415e9cdb5c16ab982105e864c74
deleted: sha256:4b89892a3e521980e7142f5fddee9b416659afdd44af33dc1e15c929be0e9a67
deleted: sha256:6a825f7215e4a62a91d221d10e215b602170d0b76d5c185c6cc104ad8530bf13
deleted: sha256:182786d2ac18c6b0fc97601a6f329b6a172375b23b84f479f678dc225a235885
deleted: sha256:f55692ded7a4254179d7e8f248a01a72958dedba76a693c3d0df03d2917658c9
deleted: sha256:e71608e15fb45536af803031a0450f5a90916e14b98276b6a55cb02c852cc2c7
deleted: sha256:835ebbe830d5b4908f623e6a561765a9058b522817e140c1dcb9aa1c5723239d
deleted: sha256:ad418f3ce0e046159dbdb4fedaf08e17f3ab4925c8f750f0a9d70c6fd6daba13
deleted: sha256:78ec8b2f0529e3081717103775e5000538c4711a7e4bf860209d7d0771634172
deleted: sha256:48666619ccf6370f9385b8f21b1ab4eafdebd1894181ae3fae57d2f08b6c5d23
deleted: sha256:173c8f6e0788ac377327f828c1adbfc7701182de462d2477e857bde4d559ff2b
deleted: sha256:0f3b0f22bab61035d8a3672990220f1b9331762c49c7eb40e7f84db1868aae7d
deleted: sha256:c07febd8c6dfd6cace8171217ef27193d0a39fe3d60c1e8d78b252f4f1e75efd
deleted: sha256:c75e481c9efd374812077461c58e55eadb755ae4716705c54555f822a329999c
deleted: sha256:cd0dc49f1698274a0eaa6efa8f0ce5aa6c49d493ad7c8f0a62303eb1d849e5d1
deleted: sha256:537063b94188ba454a53c76b0dee094ca694f4613c0db24c14a1d92768272b87
deleted: sha256:e191e85d08052afd777eb097b2c18b8aa0eb53ba590b97885e9f20a7f05c78b3
deleted: sha256:83d83a948675899148f235a5d9c3366291fa0d45a39d1310722ef288d7643ff1
deleted: sha256:1e9a6023216a84aaba237612fd6eb444d3cf9bb8a140ff2e60fce130ee8d7d1b
deleted: sha256:355822f72b230f4b33d767414987be68b45d9d4bc42478da49fabe8d5448df15
deleted: sha256:4350dcd994bd581725701f2fcc45e0ec578aaa2ad346a0f89d4818b84f25236a
deleted: sha256:bba3e506436fb2795595b48cfcb3cdc87036006fea89044ee85273d81a7f147c
deleted: sha256:f24d158313abbea7b600d75322dda194d6a709764b16f6a6a2d89cf4262dabe9

Total reclaimed space: 17.57MB
bharathdasaraju@MacBook-Pro know-docker-well (main) $ docker image prune
WARNING! This will remove all dangling images.
Are you sure you want to continue? [y/N] y
Total reclaimed space: 0B
bharathdasaraju@MacBook-Pro know-docker-well (main) $ docker images
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
<none>              <none>              9d8aa22feb10        7 minutes ago       886MB
python              latest              b2278d5ae327        2 days ago          886MB
node                14                  e0ab58ea4a4f        2 days ago          944MB
node                latest              994ea6c26e6f        2 days ago          907MB
bharathdasaraju@MacBook-Pro know-docker-well (main) $ 

