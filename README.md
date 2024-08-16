This app is from https://docker-curriculum.com/#multi-container-environments
The code of the app in flask-app dir stays the same; while docker-compose.yml file is modified to work with newest version of docker.

Information of the app can be found at https://github.com/prakhar1989/FoodTrucks

#### Docker Images
##### Elastic Search 
```
$ docker pull docker.elastic.co/elasticsearch/elasticsearch:6.3.2
```
#### Flask App 
Instructions to build the image with the code in this folder can be found in Dockerfile
```
$ docker build -t username/foodtrucks-web .
```

##### Docker Network
To run the two containers individually, run the command in setup-docker.sh
The flow is as follows: create a bridge network, run elastic search and flask-app containers in this bridge network, so that flask-app can reach elastic search with container name. 
or
```
$ ./setup-docker.sh
```

##### Docker Compose
Couple of modifications to docker-compose.yml file: 
###### make web container wait for es container start successfully (by healthcheck)
###### remove binding mount local code repo to the working directory, otherwise web container will always pick up local change
```
$ docker-compose up
```
##### Kubernetes 
Enable Kubernetes from Docker Desktop
Then run the kubeclt commands in k8s/setup_k8s.sh file
