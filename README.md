[![CircleCI](https://circleci.com/gh/wendysegura/ml-microservice-kubernetes.svg?style=svg)](https://circleci.com/gh/wendysegura/ml-microservice-kubernetes)

## Project Overview
To utulize a pre-trained, sklearn model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home, data about highway access, and teacher-to-pupil ratios.
Then operationalize the machine learning microservice using kubernetes

### Objectives:
* Test project code using linting
* Complete a Dockerfile to containerize the application
* Deploy a containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that the code has been tested


## Environment SetUp

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
