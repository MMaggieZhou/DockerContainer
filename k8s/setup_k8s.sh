#!/bin/bash

kubectl apply -f es_deployment.yml

kubectl apply -f es_service.yml 

kubectl apply -f web_deployment.yml 

kubectl apply -f web_service.yml
