# golangk8s
Demonstration showing containerized golang REST API. This is using the latest postgres db. I currently create the schema for the database inside the main function. The database url can be changed through a DATABASE_URL environment variable. If that is not present, it defaults to local. 

# getting started
This app requires golang, docker compose, and docker

### Install Go
$ wget https://go.dev/dl/go1.18.4.linux-amd64.tar.gz
$ sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.18.4.linux-amd64.tar.gz

### Get tools
To see the results in the database, you can use whatever DB connection tool. I am using Table plus
To send data to and from the microservice locally, I'm using postman (feel free to use curl too)

### Start the database
docker compose build
docker compose up -d go_db

### Start the go app
docker compose up go-app

