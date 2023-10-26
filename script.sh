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