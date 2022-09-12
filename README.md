<p align="center">
    <a href="https://dl.circleci.com/status-badge/redirect/gh/IzicTemi/operationalize_a_ML_microservice_API/tree/main"><img src="https://dl.circleci.com/status-badge/img/gh/IzicTemi/Operationalize-a-ML-Microservice-API/tree/main.svg?style=svg" alt="CircleCI">
    </a>
</p>

## Project Overview

In this project, I operationalize a Machine Learning Microservice API provided in a Python flask app — `app.py`— that serves out predictions (inference) about housing prices through API calls. 

The model's a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

## About the Data

Data: [Boston Housing](https://www.kaggle.com/c/boston-housing).

This data consists of Housing Values in Suburbs of Boston.

Source:

* Harrison, D. and Rubinfeld, D.L. (1978) Hedonic prices and the demand for clean air. J. Environ. Economics and Management 5, 81–102.
* Belsley D.A., Kuh, E. and Welsch, R.E. (1980) Regression Diagnostics. Identifying Influential Data and Sources of Collinearity. New York: Wiley.

### Project Tasks

The project goal is to operationalize the working machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project I'll:

* Test project code using linting.
* Create a Dockerfile to containerize this application.
* Deploy the containerized application using Docker and make a prediction.
* Configure Kubernetes and create a Kubernetes cluster.
* Deploy a container using Kubernetes and make a prediction.

---

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it.

```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
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

### General file description

* The .circleci folder contains the `config.yml` 
* The `app.py` file containes the source code for the model prediction.
* The Dockerfile is used to containerize the application 
* The `make_prediction.sh` file is used to send a post request to the running container
* The `requirement.txt` file contains the needed dependencies for the application
