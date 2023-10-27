# Build docker image
docker build -t <username_dockerhub>/<nama_folder> <nama_folder>

# Melihat detail ketika image sedang di buat
docker build -t <username_dockerhub>/<nama_folder> <nama_folder> --pogress=palin --no-cahce

# FROM Instruction
# membuat image 
docker build -t ilhamfirmansyah28/from from

# melihat semua image
docker image ls

# RUN Instruction
docker build -t ilhamfirmansyah28/run run

# Melihat detail dari image sedang di buat
docker build -t ilhamfirmansyah28/run run --pogress=palin --no-cahce


# CMD Instruction
docker build -t ilhamfirmansyah28/command command

docker image inspect ilhamfirmansyah28/command

docker container create --name command ilhamfirmansyah28/command

docker container start command

docker container logs command


# LABEL Instruction
docker build -t ilhamfirmansyah28/label label

docker image inspect ilhamfirmansyah28/command


#  ADD Instruction

docker build -t ilhamfirmansyah28/add add 

docker container create --name add ilhamfirmansyah28/add

docker container start add

docker container logs add


#  Copy Instruction

docker build -t ilhamfirmansyah28/copy copy

docker container create --name copy ilhamfirmansyah28/copy

docker container start copy

docker container logs copy


#  .dockerignore

docker build -t ilhamfirmansyah28/ignore ignore

docker container create --name ignore ilhamfirmansyah28/ignore

docker container start ignore

docker container logs ignore


#  EXPOSE Instruction

docker build -t ilhamfirmansyah28/expose expose

docker image inspect ilhamfirmansyah28/expose

docker container create --name expose -p 8080:8080 ilhamfirmansyah28/expose

docker container start expose

docker container logs expose

curl localhost:8080

# ENV Instruction
docker build -t ilhamfirmansyah28/env env

docker image inspect ilhamfirmansyah28/env

docker container create --name env --env APP_PORT=9090 -p 9090:9090 ilhamfirmansyah28/env

docker container start env

docker container ls

docker container logs env

docker container stop env


# VoLUME Instruction
docker build -t ilhamfirmansyah28/volume volume

docker image inspect ilhamfirmansyah28/volume

docker container create --name volume -p 8080:8080 ilhamfirmansyah28/volume

docker container start volume

docker container logs volume

docker container inspect volume

# 9c6ce9040c81b7498e9e7f8537b1cfe5abd754a64e6d83bc3f691368d85c25e0
docker volume ls


# WORKDIR Instrction

docker build -t ilhamfirmansyah28/workdir workdir

docker container create --name workdir -p 8080:8080 ilhamfirmansyah28/workdir

docker container start workdir

curl localhost:8080

docker container exec -i -t workdir /bin/sh 


# USER Instruction
docker build -t ilhamfirmansyah28/user user

docker container create --name user -p 8080:8080 ilhamfirmansyah28/user

docker container start user

docker container exec -i -t user /bin/sh


