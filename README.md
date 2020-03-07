[![CircleCI](https://circleci.com/gh/rgarlin/microproject.svg?style=svg)](https://circleci.com/gh/rgarlin/microproject)


## Project Summary


This project takes a model predicting house pricing in the Boston area. The model takes data and using the API of a Flask appretunrs the results. The model is deplpyed as a Docker container and managed through Kubernetes. In this project linting was used, hadolint for the Docker file and pylint for the python file, app.py. For testing, the Github respositorty is intergrated with CircleCI, to test the code.   


Summary of files:
* Dockerfile - uses a python:3.7.3-stretch base image and has the commands to deploy the Flash App. 
* Makefile - contains commands that allow you to execute shell commands. 
* app.py - This is Flash App that executes the housing model prediction. 
* docker_out.txt  - logging information from the Docker container from the Flash App when the prediction was execute. 
* kubernetes.out.txt -  logging information from the Flash App after the Docker container was managed by Kubernetes
* make_prediction.sh - commands that calls the Flask App for predictions
* These 2 directories are used by the Flask App t o make predictions, 
      * model_data 
      * output_txt_files
* requirements.txt - install the python requirements needed by the Flask App to make the predictions.
* These 3 files all executes shell commands:
      * run_docker.sh - creates the Docker container
      * run_kubernetes.sh - allows the Docker container to be managed by Kubernetes
      * upload_docker.sh - uploads the Docker container ro Dockerhub 



### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
# DevOpsKubernetes
