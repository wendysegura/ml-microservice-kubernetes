[![CircleCI](https://circleci.com/gh/wendysegura/ml-microservice-kubernetes.svg?style=svg)](https://circleci.com/gh/wendysegura/ml-microservice-kubernetes)

## Project Overview
To utulize a pre-trained, sklearn model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home, data about highway access, and teacher-to-pupil ratios.
Then operationalize the machine learning microservice using kubernetes

<img src="model_data/housegraph.png"/>



### Objectives:
* Test project code using linting
* Complete a Dockerfile to containerize the application
* Deploy a containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that the code has been tested


## Environment SetUp
`git clone https://github.com/udacity/DevOps_Microservices.git`
`cd DevOps_Microservices/project-ml-microservice-kubernetes`

* Create a virtualenv and activate it
`python3 -m venv ~/.devops`
`source ~/.devops/bin/activate`

* Run `make install` to install the necessary dependencies

* Command line should look like line below:
`(.devops) <User>:ml-microservice-kubernetes<user>`

### Other Installs:
Docker, Virtualbox, and  Minikube

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Install VirtualBox:
    Mac:
    `brew cask install virtualbox`
* Install MiniKube    
    `brew cask install minikube`
    Windows:
    [How to install Minikube link](https://kubernetes.io/docs/tasks/tools/install-minikube/)
    
    
 ### Running the project `app.py`
1. Standalone:  `python app.py`
2. Run in Docker
  a) Start Docker: 
    `./run_docker.sh`
  b) Open another terminal window and run: 
    `./make_prediction.sh`
3. Run in Kubernetes
  a) start minicube: 
     `minikube start`
  b) Deploy application:
     `./run_kubernetes.sh`
  c) Open another terminal (once the pod is running): 
    `./make_prediction_k.sh`
  d) Destroy the minikube after your done:
    `minikube delete`

## List of Files and Explanation
* .circleci: Configuration file used for running test
* model_data: Data files used for making the predictions
* output_txt_files: These are the kubernestes and docker log files 
* Dockerfile: File for building the docker image
* Makefile: Instructions on environment setup and lint test
* README.md: Setup Instructions, Goal, Purpose of project
* app.py: Python flask app that serves out predictions through API calls.  
* make_prediction.sh: Request sent to the application to get the prediction from localhost
* make_prediction_k.sh: Request sent to the application to get the prediction from kubernetes
* requirements.txt: The dependencies
* run_docker.sh: Runs docker
* run_kubernetes.sh: Runs kubernetes
* upload_docker.sh: Pushes to docker repository
