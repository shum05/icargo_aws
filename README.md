# ICARGO MACHINE LEARNING PROJECT
## Project Title: 
    Cargo Screening Certification Predictor
## Description:
The Cargo Screening Certification Predictor is a machine learning project designed to assist cargo screening organizations in identifying individuals who are likely to pass the final certification exam with a score of 85% or higher. The project leverages a dataset containing training assessment test scores, HR initial recruitment exam scores, and a variety of demographic features to make predictions.

## Background:
In the context of cargo screening, ensuring that individuals meet the required certification standards is crucial for maintaining the security and efficiency of cargo operations. The final certification exam serves as a critical benchmark for assessing an individual's readiness and competence in this field.
### Dataset:
 The project uses a comprehensive dataset that includes the following key features:

Training Assessment Test Scores: Scores obtained by individuals in post-training assessments, which evaluate their understanding of cargo screening procedures and principles.

HR Initial Recruitment Exam Score: The score achieved by candidates in the HR initial recruitment exam, which measures their baseline aptitude and knowledge.

Demographic Features: Additional demographic information about each candidate, such as age, gender, educational background, and work experience.
## Objective:
The primary objective of this project is to build a machine learning model capable of predicting whether a candidate is likely to pass the final certification exam with a score of at least 85%. By doing so, cargo screening organizations can proactively identify individuals who may require additional training or support to meet the certification criteria.
## Methodology:
 The project follows these key steps:

Data Preprocessing: The dataset is cleaned, missing values are handled, and categorical features are encoded appropriately.

Feature Selection: Relevant features are selected, and feature engineering may be performed to create new informative features.

Model Building: Various machine learning algorithms, such as logistic regression, decision trees, random forests, and neural networks, are trained and evaluated on the dataset.

Model Evaluation: Model performance is assessed using metrics like accuracy, precision, recall, and F1-score, with a focus on achieving high accuracy and recall for identifying potential candidates.

Deployment: The best-performing model is deployed as a prediction tool for cargo screening organizations to assess candidates' likelihood of passing the final certification exam.
## Benefits:

The Cargo Screening Certification Predictor offers several benefits, including:

Improved efficiency in identifying candidates likely to succeed in the final certification exam.
Reduced training costs by targeting resources on individuals who need additional support.
Enhanced security and competence in cargo screening operations.

## Technology Stack:

Programming Language:
     Python 3.9
Machine Learning Frameworks:
     pandas,numpy,seaborn,matplotlib,scikit-learn,catboost,xgboost
Web Interface: 
    Flask (for a user-friendly web interface)
Database: 
    MSSQL (for storing screening data)
Deployment:
    AWS- Docker and Kubernetes for containerization and orchestration.
 

## Disclaimer:
This project is intended for demonstration purposes and as a proof-of-concept for cargo screening certification automation. It is not intended for real-world cargo security applications without appropriate validation and certification.

## AWS (ec2 & ecr) Deployment with Github Actions
Steps:
 - Prerequisites==>Prepare the entire project deployment and push it to a github repo
 - Docker And Workflow Set up
 - Iam User Setup In AWS ==> with ec2 and ecr full access policies
 - ECR Repository set up ==> 
-  EC2 Instance set up
 - Docker Set up In EC2 instance
 - App runner set up in github
 - run Workflow

1. Docker
	- docker images
	- docker build -t s3sdocker/icargoaws .
	- docker login
	- un
	- pw
	- docker push s3sdocker/icargoaws:latest

2. commands to exec to set up ec2(from cli)
	#### optinal
	- sudo apt-get update -y
	- sudo apt-get upgrade
	#### required
	- curl -fsSL https://get.docker.com -o get-docker.sh
	- sudo sh get-docker.sh
	- sudo usermod -aG docker ubuntu
	- newgrp docker
3. commands to exec to setup github self-hosted runner on ec2(from cli)=> similar to but not same as
	### Download
		- # Create a folder
		- $ mkdir actions-runner && cd actions-runner# Download the latest runner package
		- $ curl -o actions-runner-linux-x64-2.309.0.tar.gz -L https://github.com/actions/runner/releases/download/v2.309.0/actions-runner-linux-x64-2.309.0.tar.gz# Optional: Validate the hash
		- $ echo "2974243bab2a282349ac833475d241d5273605d3628f0685bd07fb5530f9bb1a  actions-runner-linux-x64-2.309.0.tar.gz" | shasum -a 256 -c# Extract the installer
		- $ tar xzf ./actions-runner-linux-x64-2.309.0.tar.gz
	### Configure
		# Create the runner and start the configuration experience
		- $ ./config.sh --url https://github.com/shum05/icargo_aws --token BARWQAWY2BXSWRKCLLGW4XTFDN2TC# Last step, run it!
		- $ ./run.sh
4. Github and ecr Repo setup
	- AWS_ACCESS_KEY_ID= AKIAXF2SATNMMAQLRY5D
	- AWS_SECRET_ACCESS_KEY=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
	- AWS_REGION= us-west-1
	- AWS_ECR_LOGIN_URI= 493556374360.dkr.ecr.us-west-1.amazonaws.com
	- ECR_REPOSITORY_NAME= icargoaws
